//
//  ControlsView.swift
//  RelaxAndUnwind
//
//  Created by Stephen DeStefano on 10/24/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ControlsView: View {
    
    @Binding var videoLocation: Double
    @Binding var videoDuration: Double
    @Binding var isScrubbing: Bool
    let player: AVPlayer
    @State private var circleProgress: CGFloat = 1.0
    @State private var isPaused = true
    @State private var isLooped = true
    
    var body: some View {
    VStack {
        HStack {
            ZStack {
                Rectangle().cornerRadius(20)
                    .frame(width: 60, height: 25)
                    .padding(.leading, 25)
                
                // display the video time, which we can get by multiplying the videoLocation by the videoDuration
                Text("\(removeDecimalPlaces(number: videoLocation * videoDuration))")
                    .foregroundColor(.white)
                    .bold()
                    .padding(.leading, 25)
            }
                
                //the dynamic percent circle
                               VStack {
                                   Circle()
                                       //starting the trim at 0.0001 because if its set to 0 and we have a NaN number, then it causes the complete circle to appear on the start of the video
                                       .trim(from: 0.0001, to: CGFloat(Double(videoLocation)))
                                       .stroke(Color.orange, style: StrokeStyle(lineWidth: 5, lineCap: CGLineCap.round))
                                       .frame(height: 45)
                                       .rotationEffect(.degrees(-90))
                                       .overlay(Text("\(removeDecimalPlaces(number: videoLocation * 100.0))%")
                                           .font(.caption)
                                           .foregroundColor(.white)
                                           .bold())
                               }
                
                //put the video duration over a rectangle, in a ZStack
                               ZStack {
                                   Rectangle().cornerRadius(20)
                                       .frame(width: 60, height: 25)
                                       .padding(.trailing, 25)
                                   // display the video duration to the right of the slider
                                   Text("\(removeDecimalPlaces(number: videoDuration))")
                                       .foregroundColor(.white)
                                       .bold()
                                       .padding(.trailing, 25)
                               }
                           }
            
            // Slider for searching / showing video progress
                                  Slider(value: $videoLocation, in: 0...1,  onEditingChanged: sliderChanged)
                                      .accentColor(.orange)
                                      .padding(.horizontal, 2)
                                      .background(Color.black)
                                      .cornerRadius(.infinity) // Rounded ends
                                      .shadow(color: .white, radius: 5, x: 0, y: 0)
                                      .padding(EdgeInsets(top: 0, leading: 30, bottom: 10, trailing: 30))
            
            HStack {
                                      Spacer()
                                      // Play/pause button
                                      Button(action: togglePlayPause) {
                                          Image(systemName: isPaused ? "play" : "pause")
                                              .padding(.horizontal)
                                              .padding()
                                              .foregroundColor(Color.white)
                                              .background(Color.green)
                                              .cornerRadius(.infinity)
                                              .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 10))
                                      }
                 // stop button
                                         Button(action: stop) {
                                             Image(systemName: "stop")
                                                 .padding(.horizontal)
                                                 .padding()
                                                 .foregroundColor(Color.white)
                                                 .background(Color.red)
                                                 .cornerRadius(.infinity)
                                                 .padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 0))
                                         }
                                           //loop button
                                       Button(action: {
                                           self.toggleIsLooped()
                                           self.loop()
                                       }) {
                                          Image(systemName: isLooped ? "repeat" : "checkmark.circle")
                                       }
                                       .padding(6)
                                       .foregroundColor(Color.white)
                                       .background(Color.orange)
                                       .cornerRadius(.infinity)
                                       .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 50))
                               
                                   }
                        
                    }
                }
    
    func sliderChanged(scrubbing: Bool) {
        //if scrubbing, set a flag so the slider dosen't get updated by the periodic time observer
        if scrubbing {
            isScrubbing = true
            pausePlayer(true)
        }
        if !scrubbing {
            let targetTime = CMTime(seconds: videoLocation * videoDuration, preferredTimescale: 600)
            player.seek(to: targetTime) { _ in
                //the seeking has finished, continue as usual
                self.isScrubbing = false
                self.pausePlayer(false)
            }
        }
    }
    
    func togglePlayPause() {
        pausePlayer(!isPaused)
    }
    
    func pausePlayer(_ pause: Bool) {
        isPaused = pause
        
        if isPaused {
            player.pause()
        } else {
            player.play()
        }
    }
    
    func stop () {
        togglePlayPause()
        player.pause()
        player.seek(to: CMTime(seconds: 0.0, preferredTimescale: 600))
    }
    
    func loop() {
        NotificationCenter.default.removeObserver(self.player.currentItem!)
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.player.currentItem, queue: .main) {_ in
            self.player.seek(to: CMTime.zero)
            self.player.play()
        }
    }
    
    func toggleIsLooped() {
        isLooped.toggle()
    }
    
    func removeDecimalPlaces(number: Double)-> String {
        let convertedNumber = String(format: "%.0f", number)
        if convertedNumber == "nan" {
            return "0"
        }
        return convertedNumber
    }
}




















struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView(videoLocation: .constant(0.0), videoDuration: .constant(0.0), isScrubbing: .constant(true), player: AVPlayer()).previewLayout(.sizeThatFits)
    }
}

//
//  ContentView.swift
//  RelaxAndUnwind
//
//  Created by Stephen DeStefano on 10/24/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        PickerView()
    }
}



struct PickerView: View {
    @State var videoName = "Snowy Pond"
    var winterVideos = ["Fireplace", "Snowy Pond", "Blizzard"]
    var birdVideos = ["Birds Eating", "Birds in Trees", "Swans"]
    var waterfallVideos = ["Waterfalls", "Waterfall Buddha", "Waterfall Zen"]
    var whiteNoiseVideos = ["WN-Windy", "WN-Ocean", "WN-RainThunder"]
    var trailerVideos = ["Avengers"]
    
    var body: some View {
        
        VStack {
            Spacer()
            VStack {
                Text("Relax and Unwind")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .black, design: .default))
                    .padding(.init(top: 15, leading: 0, bottom: 5, trailing: 0))
                
                VStack {
                    if videoName == "Fireplace" {
                        SetPlayer(video: "Fireplace")
                    }
                    if videoName == "Snowy Pond" {
                        SetPlayer(video: "Snowy Pond")
                    }
                    if videoName == "Blizzard" {
                        SetPlayer(video: "blizzard")
                    }
                }
                
                VStack {
                    if videoName == "Birds Eating" {
                        SetPlayer(video: "Birds Eating")
                    }
                    if videoName == "Birds in Trees" {
                        SetPlayer(video: "Birds in Trees")
                    }
                    if videoName == "Swans" {
                        SetPlayer(video: "Swans")
                    }
                }
                
                VStack {
                    if videoName == "Waterfalls" {
                        SetPlayer(video: "Waterfalls")
                    }
                    if videoName == "Waterfall Buddha" {
                        SetPlayer(video: "Waterfall Buddha")
                    }
                    if videoName == "Waterfall Zen" {
                        SetPlayer(video: "Waterfall Zen")
                    }
                }
                
                VStack {
                    
                    if videoName == "WN-Windy" {
                        SetPlayer(video: "WN-Windy")
                    }
                    if videoName == "WN-Ocean" {
                        SetPlayer(video: "WN-Ocean")
                    }
                    if videoName == "WN-RainThunder" {
                        SetPlayer(video: "WN-RainThunder")
                    }
                    if videoName == "Avengers" {
                        SetPlayer(video: "Avengers")
                    }
                }

                
                Text("Choose a relaxing video to watch")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Picker(selection: $videoName, label: Text("")) {
                   
                    ForEach(winterVideos, id: \.self) { name in
                        WinterSymbol(name: name)
                    }
                    ForEach(birdVideos, id: \.self) { name in
                        BirdSymbol(name: name)
                    }
                    ForEach(whiteNoiseVideos, id: \.self) { name in
                        WhiteNoiseSymbol(name: name)
                    }
                    ForEach(waterfallVideos, id: \.self) { name in
                        WaterfallSymbol(name: name)
                    }
                    ForEach(trailerVideos, id: \.self) { name in
                        MovieSymbol(name: name)
                    }
                    
                }.pickerStyle(WheelPickerStyle())
                    .offset(x: 15)
                    .frame(width: 300, height: 150)
                    .foregroundColor(Color.white)
                    .background(Color.red.colorMultiply(.blue))
                    .cornerRadius(15)
                    .shadow(color: .white, radius: 5, x: 0, y: 0)
                    .padding()
            }
        }.background(Image("background7").resizable().edgesIgnoringSafeArea(.all))
    }
}


struct SetPlayer: View {
    @State var video = ""
    var body: some View {
        VStack {
            Text("Playing \(video)")
                .foregroundColor(.white)
                .font(.caption)
                .bold()
            
            PlayerAndControlsView(url: URL(fileURLWithPath: Bundle.main.path(forResource: video, ofType: "mp4")!))
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  PlayerAndControlsView.swift
//  RelaxAndUnwind
//
//  Created by Stephen DeStefano on 10/24/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import SwiftUI
import AVFoundation

struct PlayerAndControlsView: View {
    
    private var player: AVPlayer
    @State private var videoLocation: Double = 0
    @State private var videoDuration: Double = 0
    @State private var isScrubbing: Bool = false
    
    init(url: URL) {
        player = AVPlayer(url: url)
    }
    
    var body: some View {
        VStack {
            VStack {
                 WrappedPlayerView(videoLocation: $videoLocation, videoDuration: $videoDuration, isScrubbing: $isScrubbing, player: player)
                                   .padding(2)
                                   .frame(width: 410, height: 300)
                Spacer()
                ControlsView(videoLocation: $videoLocation, videoDuration: $videoDuration, isScrubbing: $isScrubbing, player: player)
            }
        }
    }
}

struct PlayerAndControlsView_Previews: PreviewProvider {
    static let url = URL(string: "fire")
    static var previews: some View {
        
        PlayerAndControlsView(url: url!).previewLayout(.sizeThatFits)
    }
}

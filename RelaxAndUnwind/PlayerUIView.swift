//
//  PlayerUIView.swift
//  RelaxAndUnwind
//
//  Created by Stephen DeStefano on 10/24/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import Foundation
import AVFoundation
import SwiftUI

class PLayerUIView: UIView, ObservableObject {
    
    let player: AVPlayer
    let playerLayer = AVPlayerLayer()
    private let videoLocation: Binding<Double>
    private let videoDuration: Binding<Double>
    private let isScrubbing: Binding<Bool>
    private var observeVideoDuration: NSKeyValueObservation?
    private var timeObservation: Any?
    
    init(player: AVPlayer, videoLocation: Binding<Double>, videoDuration: Binding<Double>, isScrubbing: Binding<Bool>) {
        self.player = player
        self.videoDuration = videoDuration
        self.videoLocation = videoLocation
        self .isScrubbing = isScrubbing
        
        super.init(frame: .zero)
        backgroundColor = .black
        playerLayer.player = player
        layer.addSublayer(playerLayer)
        
        observeVideoDuration = player.currentItem?.observe(\.duration, changeHandler: { [weak self] item, change in
            guard let value = self else { return }
            value.videoDuration.wrappedValue = item.duration.seconds
        })
        
        timeObservation = player.addPeriodicTimeObserver(forInterval: CMTime(seconds: 0.1, preferredTimescale: 600), queue: nil) { [weak self] time in
            guard let value = self else { return }
            guard !value.isScrubbing.wrappedValue else { return }
            
            value.videoLocation.wrappedValue = time.seconds / value.videoDuration.wrappedValue
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("There was a problem initializing")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    func removeObservers() {
        observeVideoDuration?.invalidate()
        observeVideoDuration = nil
        
        if let observevedTime = timeObservation {
            player.removeTimeObserver(observevedTime)
            timeObservation = nil 
        }
    }
    
}

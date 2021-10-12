//
//  CustomVideoPlayer.swift
//  Reels (iOS)
//
//  Created by Jigar on 12/10/21.
//

import SwiftUI
import AVFoundation
import AVKit
// custom video player from UIkit

struct CustomVideoPlayer: UIViewControllerRepresentable {

    var player : AVPlayer

    func makeUIViewController(context: Context) -> AVPlayerViewController {

        let controller = AVPlayerViewController()

        controller.player = player
        controller.showsPlaybackControls = false

        controller.videoGravity = .resizeAspect
        return controller
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {

    }

}


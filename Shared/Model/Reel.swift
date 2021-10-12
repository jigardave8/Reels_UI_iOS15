//
//  Reel.swift
//  Reels (iOS)
//
//  Created by Jigar on 11/10/21.
//

import SwiftUI
import AVKit

struct Reel : Identifiable{

    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: MediaFile
    
}

//
//  MediaFile.swift
//  Reels (iOS)
//
//  Created by Jigar on 09/10/21.
//

import SwiftUI

// Sample Model and Reels Videos...

struct MediaFile: Identifiable {
    var id = UUID()  .uuidString
    var url: String
    var title: String
    var isExpanded: Bool = false
    
    
//    var MediaFileJSON = [
//        MediaFile (url: "Reel1", title: "question , I get asked all the time....."),
//        MediaFile (url: "Reel2", title: "Love... Life"),
//        MediaFile (url: "Reel3", title: "Reel trend"),
//        MediaFile (url: "Reel4", title: "Frozen Honey....."),
//        MediaFile (url: "Reel5", title: "Nature_Love....."),
//        MediaFile (url: "Reel6", title: "In the Getto trend....."),
//    ]
//
    
}

//
//  ReelsView.swift
//  Reels (iOS)
//
//  Created by Jigar on 09/10/21.
//

import SwiftUI
import AVKit


struct ReelsView: View {
    
    @State var currentReel = ""
    
    // Extracting Avplayer from media file
    
    @State var reels = MediaFileJSON.map   {
        item-> Reel in
        
        let url = Bundle.main.path(forResource: item.url , ofType: "mp4")  ?? ""
        
        let player = AVPlayer(
            url: URL(fileURLWithPath: url))
        
        return Reel (player: player, mediaFile: item)
    }
    
    var body: some View {
        
        
        // Setting Width and Height for  roatted vieww
        
        GeometryReader { proxy in
            let size = proxy.size
            // Vertical Page Tab View
            
            TabView(selection: $currentReel){
                
                ForEach($reels){ $reel in
                    
                    ReelsPlayer(reel: $reel)
                    
                    // Setting Width...
                        .frame(width:size.width)
                    
                    
                    
                    // Rotating Content...
                        .rotationEffect(.init(degrees:-90))
                        .ignoresSafeArea(.all, edges: .top)
                    
                    
                }
                
                //Rotating View...
                .rotationEffect(.init(degrees: 90))
                
                // Since view is rotated setting height as width..
                
                .frame(width: size.height)
                
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                // setting max widht
                .frame(width: size.width)
                
                
            }
            .ignoresSafeArea(.all, edges: .top)
            
            
        }
    }
}

struct ReelsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ReelsPlayer: View{
    
    @Binding var reel: Reel
    
    var body: some View{
        
        ZStack{
            
            // safe check
            
            if let player = reel.player{
                
                CustomVideoPlayer(player: player)
                
            }
        }
    }
    
}


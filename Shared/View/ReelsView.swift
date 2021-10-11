//
//  ReelsView.swift
//  Reels (iOS)
//
//  Created by Jigar on 09/10/21.
//

import SwiftUI

struct ReelsView: View {

    @State var currentReel = ""
    var body: some View {


       // Vertical Page Tab View

        TabView(selection: $currentReel){

            ForEach(MediaFileJSON){ media in

                Color.red
                    .padding()

            }



        }
    }
}

struct ReelsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Home.swift
//  Reels (iOS)
//
//  Created by Jigar on 09/10/21.
//

import SwiftUI

struct Home: View {
    //Hiding Tab Bar
    init ()
    {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
     
        //
        
        VStack (spacing: 0){
            TabView{
                Text ("Home")
                    .tag("house.fill")
                Text ("Search")
                    .tag("magnifyingglass")
                
                // Reels View...
                ReelsView()
                    .tag("Reels")
                
                Text ("Liked")
                    .tag("suit.heart")
                Text ("Profile ")
                    .tag("person.circle")
                
            }
            
            HStack(spacing: 0) {
                
            }
            
            
            
            
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

///Tab bar button

struct TabBarButton: View{
    var image: String
    var isSystemImage: Bool
    @Binding var currentTab: String
    
    var body: some View {
        
        Button {
            withAnimation {currentTab = image}
        } label: {
            if isSystemImage{
                Image(systemName: image)
                    .font(.title2)
                
            }
            else{
                Image(image)
                    .resizable()
                    .renderingMode(.template)
            }

        }
    }
    
    
}

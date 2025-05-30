//
//  MainTabView.swift
//  SimpleSocial
//
//  Created by Steven Chipman on 5/29/25.
//

import SwiftUI

struct MainTabView: View {
    
    private let model: [SocialModel] = [
        SocialModel(id: 1, author: "SwiftUIGuy", date: Date(), body: "I love SwiftUI! It makes everything so easy!"),
        SocialModel(id: 2, author: "Vimes", date: Date(), body: "You can't go around arresting the Thieves' Guild. I mean, we'd be at it all day!"),
        SocialModel(id: 3, author: "Captain Bedbeard", date: Date(), body: "I swear I just found that package, I didn't know it was yours!", favorite: true),
        SocialModel(id: 4, author: "James Hook", date: Date(), body: "Has anyone seen my alarm clock?"),
        SocialModel(id: 5, author: "Mario", date: Date(), body: "Suprise, suprise. The princess is in another castle ..."),
        SocialModel(id: 6, author: "Playdate", date: Date(), body: "Today's the day! Season Two is now available!"),
        SocialModel(id: 7, author: "Cassian", date: Date(), body: "I do not recommend Scarif as a vacation destination.")
    ]
    
    var body: some View {
        TabView {
                SocialView(models: model)
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
            // TODO: Add settings tab
        }
    }
}


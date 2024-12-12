//
//  HabitsStore.swift
//  MyHabits
//
//  Created by iAlesha уличный on 03.04.2023.
//

import UIKit

struct  DataPost {

    let autchor: String
    let description: String
    let avatarPosts: String
    
    
    static func myDataPost() -> [DataPost] {
        return [
            
            DataPost(autchor: "oleg yaaaaaha", description: "я ебал твою телку", avatarPosts: "1")
        
        ]
        
    }
    
}


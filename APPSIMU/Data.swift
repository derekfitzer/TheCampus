//
//  Data.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/28/25.
//

import Foundation
import SwiftUI

struct location {
    var id = UUID()
    var mapID: Int
    var locationName: String
    var image: String
    var imageMain: String
    var textBlocks: [String]?
    var destinations: [destination]
    var sound: String?
    var portfolioImages: [String]?
    }
    
struct player {
        var playerName: String
        var collectedItems: [item]
        var cash: Int
    }
    
struct item {
        var itemName: String
        var unlocks: Int
        var requires: [Int]?
        var achievementDescription: String
    }

struct destination: Hashable, Identifiable {
    var id = UUID()
    var myText: String
    var link: Int
}

struct action {
    
}

var msg404 = ["kerrerd fis napp rost pllea e4aas thi 23lskkkdd","We appologise but the requested location is offline. Please contact Campus IT to report missing, disruptive, fradulent or hostile enviornments. \n\nHave a wonderful day on the Campus","We apologize but the requested location is currently experiencing a temporal shift. Please try your request later.\n\nThe Campus is Glad You Are Here","Due to high volumes of location requests your location has been shifted to an alternate universe buffer, please check back later.\n\nThe Campus Loves You","Error ID 7939210 print(someone, anyone, save us from CROG)\n\nThe Campus - Your Home Away from Home","🤡\n\nThe Campus\nYou Can Never Leave","Integrity Buffer Overrun Error 867: The requested location has experienced an morality violation. Please try again later.\n\nThe Campus YES!","The voicemail box for location has not been set up. Please try again later.\n\nThe Campus\nYou Cant Call Home"]

var map0 = location(mapID: 0, locationName: "Campus Map", image: "map1", imageMain: "campusLogo", textBlocks: ["Welcome to The Campus, please select a destination"], destinations: [jHall, rossC, dorm], portfolioImages: [])

var map1 = location(mapID: 1, locationName: "Jerimiah Hall", image: "campus", imageMain: "campus11", textBlocks: ["Jerimiah Hall: Innovation Hub \n\nLocated at the heart of The Campus's virtual landscape, Jerimiah Hall stands as a beacon of technological advancement and creative exploration. This state-of-the-art academic complex serves as the primary hub for aspiring innovators, developers, and digital pioneers.", "You can explore several unique classrooms and labratories","The upper floors are hard to navigate without knowing your destination"], destinations: [j3, j2, jl,rossC, dorm], sound: "crowd1", portfolioImages: [])

var map2 = location(mapID: 2, locationName: "Ross Commons", image: "cafe", imageMain: "cafe", textBlocks: ["Welcome to Ross Commons","There are many unique shops and vendors to explore."], destinations: [jHall, dorm], sound: "map1", portfolioImages: [])
var map3 = location(mapID: 3, locationName: "Residence Hall", image: "dorm", imageMain: "dorm", textBlocks: ["Welcome the residence Hall. Please select a floor"], destinations: [rossC, jHall], portfolioImages: [])


var jHall = destination(myText: "Jerimiah Hall", link: 1)
var rossC = destination(myText: "Ross Commons", link: 2)
var dorm = destination(myText: "Residence Hall", link: 3)
var jl = destination(myText: "Jerimiah Hall Lower Level", link: 4)
var j2 = destination(myText: "Jerimiah Hall 2nd Floor", link: 5)
var j3 = destination(myText: "Jerimiah Hall 3rd Floor", link: 6)


var locations = [map0, map1, map2, map3]


// search





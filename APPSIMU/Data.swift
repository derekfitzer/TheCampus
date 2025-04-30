//
//  Data.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/28/25.
//

import Foundation

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
    
    
    struct player {
        var playerName: String
        var collectedItems: [item]
        var cash: Int
        
    }
    
    struct item {
        var itemName: String
        var unlocks: Int
        
    }
    
    // name all image files with your id at the beginning of the file name!
    // example 001myImage.png
    // This will prevent duplicate file names.
    
}

struct destination: Hashable, Identifiable {
    var id = UUID()
    var myText: String
    var link: Int
}

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



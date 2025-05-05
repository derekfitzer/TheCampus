//
//  DataLocations.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 5/2/25.
//

import Foundation

// Common Locations

// Place student locations in your studentData / Student initial folder



var loc0000 = location(mapID: 0, locationName: "Campus Map", image: "map1", imageMain: "campusLogo", textBlocks: ["Welcome to The Campus, please select a destination"], destinations: [dest0001, dest0002, dest0003], portfolioImages: [])

var loc0001 = location(mapID: 1, locationName: "Jerimiah Hall", image: "campus", imageMain: "campus11", textBlocks: ["Jerimiah Hall: Innovation Hub \n\nLocated at the heart of The Campus's virtual landscape, Jerimiah Hall stands as a beacon of technological advancement and creative exploration. This state-of-the-art academic complex serves as the primary hub for aspiring innovators, developers, and digital pioneers.", "You can explore several unique classrooms and labratories","The upper floors are hard to navigate without knowing your destination"], destinations: [dest6000, dest7000, dest0004, dest0002, dest0003], sound: "crowd1", portfolioImages: ["fdfjh1", "fitzerart"])

var loc0002 = location(mapID: 2, locationName: "Ross Commons", image: "cafe", imageMain: "cafe", textBlocks: ["Welcome to Ross Commons","There are many unique shops and vendors to explore."], destinations: [dest1000, dest2000, dest0001, dest0003], sound: "map1", portfolioImages: [])
var loc0003 = location(mapID: 3, locationName: "Blobert Residence Hall", image: "dorm", imageMain: "dorm", textBlocks: ["Welcome the residence Hall. Please select a floor"], destinations: [dest3000, dest4000, dest5000, dest0002, dest0001], portfolioImages: [])

// lobby locaions

var loc1000 = location(mapID: 1000, locationName: "Commons North Lobby", image: "lobbyGeneric", imageMain: "lobbyGeneric", destinations: [dest0100, dest0110, dest0120, dest0130, dest0140, dest0002])
var loc2000 = location(mapID: 2000, locationName: "Commons South Lobby", image: "lobbyGeneric", imageMain: "lobbyGeneric", destinations: [dest0150, dest0160, dest0170, dest0180, dest0190,  dest0002])
var loc3000 = location(mapID: 3000, locationName: "Dorms 1st Floor", image: "lobbyGeneric", imageMain: "lobbyGeneric", destinations: [dest0200, dest0210, dest0220, dest0230, dest0240, dest0250,  dest0003])
var loc4000 = location(mapID: 4000, locationName: "Dorms 2st Floor", image: "lobbyGeneric", imageMain: "lobbyGeneric", destinations: [dest0260, dest0270, dest0280, dest0290, dest0300, dest0310,  dest0003])
var loc5000 = location(mapID: 5000, locationName: "Dorms 3nd Floor", image: "lobbyGeneric", imageMain: "lobbyGeneric", destinations: [dest0320, dest0330, dest0340, dest0350, dest0360, dest0370,  dest0003])
var loc6000 = location(mapID: 6000, locationName: "Jerimiah Hall Floor 2 Lobby", image: "lobbyGeneric", imageMain: "lobbyGeneric", destinations: [dest0380, dest0390, dest0400, dest0410, dest0420, dest0001])
var loc7000 = location(mapID: 7000, locationName: "Jerimiah Hall Floor 3 Lobby", image: "lobbyGeneric", imageMain: "lobbyGeneric", destinations: [dest0430, dest0440, dest0450, dest0460, dest0470, dest0480, dest0001])

// sample student instace of location

var loc0410 = location(mapID: 410, locationName: "Mr. Fitzer", owner: "Mr.Fitzer", image: "lobbyGeneric", imageMain: "", destinations: [dest0001], portfolioImages: ["lobbyGeneric"] )

var loc0350 = location(mapID: 350, locationName: "Joshua", image: "jmLiminalSpace", imageMain: "", destinations: [dest0350])

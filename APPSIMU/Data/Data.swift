//
//  Data.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/28/25.
//

import Foundation
import SwiftUI


// array of all locations. New Locations should be added to this array.

var locations = [loc0000, loc0001, loc0002, loc0003, loc1000, loc2000, loc3000, loc4000, loc5000, loc6000, loc7000]

// Create an instance of the location and destination structs below:
// make sure all instances of structs start with your initials.

struct location: Identifiable, Hashable {
    var id = UUID()
    var mapID: Int
    var locationName: String
    var owner: String?
    var ownerNickname: String?
    var ownerInitials: String?
    var image: String // this is the background image for your location
    var imageMain: String // this will be removed
    var textBlocks: [String]?  // array of text messages that will be displayed in the main location text area
    var destinations: [destination] // links - NOTE this method will be replaced with interactions
    var sound: String?  // sound that plays when a location is entered.
    var portfolioImages: [String]? // array of images
    }


struct destination: Hashable, Identifiable {
    var id = UUID()
    var myText: String
    var link: Int
}

var studentLocations: [location] = [loc0410]


    
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



struct interactions: Hashable, Identifiable { // interactions are perform action, go to destination, claim Item, and talk to persona.
    var id = UUID()
    var interactionType: interactionTypes
    // destination
    var interactionText: String // name on list button
    var destinationID: Int? // if .destination then load this destination
    // item
//    var itemName: conspiracyItem
    
    // action
    
    func action(){
        // action here if applicable
    }
}

struct conspiracyItem{
    var factionSound: String   // discovering a conspiracy item will trigger a unique sound in gameplay
    var clueText: [String]
    var components: [String]
    var itemUnlocks: Int?
    var itemAchivementDescription: String
    
}



enum interactionTypes {
case action, destination, claimItem, talk
}

enum factions {
    case whiteRats, nothingToSeeHere
}

// random error message for location not found

var msg404 = ["kerrerd fis napp rost pllea e4aas thi 23lskkkdd","We appologise but the requested location is offline. Please contact Campus IT to report missing, disruptive, fradulent or hostile enviornments. \n\nHave a wonderful day on the Campus","We apologize but the requested location is currently experiencing a temporal shift. Please try your request later.\n\nThe Campus is Glad You Are Here","Due to high volumes of location requests your location has been shifted to an alternate universe buffer, please check back later.\n\nThe Campus Loves You","Error ID 7939210 print(someone, anyone, save us from CROG)\n\nThe Campus - Your Home Away from Home","🤡\n\nThe Campus\nYou Can Never Leave","Integrity Buffer Overrun Error 867: The requested location has experienced an morality violation. Please try again later.\n\nThe Campus YES!","The voicemail box for location has not been set up. Please try again later.\n\nThe Campus\nYou Cant Call Home"]












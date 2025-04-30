//
//  RandoRoom.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI

struct RandoRoom: View {
    @State var room: archiveRandoRoom
    var body: some View {
        ZStack{
            Image(room.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .foregroundStyle(Color.white)
            ScrollView{
                Text(room.text)
            }
        }.onAppear{
            playSound(sound: "liminal1", type: "mp3")
        }
        
    }
}

#Preview {
    RandoRoom(room: rando1)
}

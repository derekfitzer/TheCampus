//
//  AchievementView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 4/30/25.
//

import SwiftUI

struct AchievementView: View {
  
    @State private var images = [Image]()
    
        let columns = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100)),  GridItem(.fixed(100))]
        
    var body: some View {
        VStack{
            ScrollView {
                Text("Achivements Unlocked")
                    .bold()
                    .font(.system(size: 30))
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(0..<images.count, id: \.self) { index in
                        images[index]
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                }
                .padding(.horizontal)
            }
            //            .frame(maxHeight: 350)
            
            Button("Add 10 Stars") {
                for _ in 1...25 {
                    images.append(Image("lockedArtifact"))
                    
                }
                images.append(Image("fitzerart"))
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    AchievementView()
}




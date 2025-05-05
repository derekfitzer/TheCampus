//
//  ArtistView.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 5/2/25.
//

import SwiftUI

struct ArtistView: View {
    var body: some View {
       // NavigationView{
            VStack{
                Text("The Campus is a colaborative class project created by the App & Sim program at the South-Western Career Academy. You can explore the campus on your own or browse student portfolios and resumes from this view.")
                    .padding()
                
                Text("Please note the content on this view is just the tip of the iceberg, explore the Campus on your own to discover its secrets.")
                    .padding()
                
                Text("Developers / Artists")
                List(studentLocations, id: \.self) { student in
                    
                    if student.owner != nil {
                       
                            HStack{
                                Text(student.owner!)
                              
                                NavigationLink {
                                    ArtistDetail(location: student)
                                } label: {
                                 
                                    Text("View Portfolio")
                                }
                            }
                        
                    }
                }
            }
        }
    }
//}
#Preview {
    ArtistView()
}

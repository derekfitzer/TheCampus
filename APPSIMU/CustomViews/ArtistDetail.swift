//
//  ArtistDetail.swift
//  APPSIMU
//
//  Created by Derek Fitzer on 5/2/25.
//

import SwiftUI

struct ArtistDetail: View {
    @State var location: location
    var body: some View {
        
        Text(location.owner!)
            .padding()
        Text("Bio")
    }
}

#Preview {
    ArtistDetail(location: loc0410)
}

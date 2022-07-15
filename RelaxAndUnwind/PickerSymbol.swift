//
//  PickerSymbol.swift
//  RelaxAndUnwind
//
//  Created by Stephen DeStefano on 10/24/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import SwiftUI

struct PickerSymbol: View {
    var body: some View {
        VStack {
        WinterSymbol(name: "snow")
        BirdSymbol(name: "bird")
        WaterfallSymbol(name: "waterfall")
        WhiteNoiseSymbol(name: "whiteNoise")
        MovieSymbol(name: "video")
        }
    }
}


struct WinterSymbol: View {
    var name: String
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "snow")
                .font(.system(size: 22))
            
            Text(name)
                .font(.custom("Ariel", size: 19))
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 0, alignment: .leading)
        }
    }
}

struct BirdSymbol: View {
    var name: String
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            Image("bird")
                .font(.system(size: 22))
            
            Text(name)
                .font(.custom("Ariel", size: 19))
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 0, alignment: .leading)
        }
    }
}

struct WaterfallSymbol: View {
    var name: String
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            Image("waterfall")
                .font(.system(size: 22))
            
            Text(name)
                .font(.custom("Ariel", size: 19))
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 0, alignment: .leading)
        }
    }
}

struct WhiteNoiseSymbol: View {
    var name: String
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            Image("whiteNoise")
                .font(.system(size: 22))
            
            Text(name)
                .font(.custom("Ariel", size: 19))
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 0, alignment: .leading)
        }
    }
}


struct MovieSymbol: View {
    var name: String
    var body: some View {
        
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: "video")
                .font(.system(size: 22))
            
            Text(name)
                .font(.custom("Ariel", size: 19))
                .frame(minWidth: 0, maxWidth: 150, minHeight: 0, maxHeight: 0, alignment: .leading)
        }
    }
}













struct PickerSymbol_Previews: PreviewProvider {
    static var previews: some View {
        PickerSymbol().previewLayout(.sizeThatFits)
    }
}

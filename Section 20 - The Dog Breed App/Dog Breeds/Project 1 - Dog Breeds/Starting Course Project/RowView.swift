//
//  RowView.swift
//  Starting Course Project
//
//  Created by Stephen DeStefano on 8/27/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    var breedData: BreedData
    
    var body: some View {
        HStack {
            Image(breedData.imageName).resizable()
                .frame(width: 60, height: 54)
                .scaledToFit()
                .clipShape(Rectangle())
                .padding(2)
            
            VStack(alignment: .leading) {
                Text(breedData.breed)
                 .font(.system(size: 20))
                 .fontWeight(.bold)
                
                Text(breedData.description)
                .lineLimit(2)
                .font(.system(size: 15))
                .lineSpacing(2)
                .frame(height: 50)
            }.frame(width: 300, height: 60)
            
        }

    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(breedData: breeds[2]).previewLayout(.sizeThatFits)
    }
}

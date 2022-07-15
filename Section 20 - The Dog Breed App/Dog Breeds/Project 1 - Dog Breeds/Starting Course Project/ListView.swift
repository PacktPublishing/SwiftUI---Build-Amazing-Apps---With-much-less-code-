//
//  ListView.swift
//  Starting Course Project
//
//  Created by Stephen DeStefano on 8/27/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(breeds) {
                breed in
                NavigationLink(destination: DetailView(dogBreedData: breed)) {
                      RowView(breedData: breed) 
                }
            }.navigationBarTitle(Text("Breeds"), displayMode: .large)
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

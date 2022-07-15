//
//  ContentView.swift
//  Starting Course Project
//
//  Created by Stephen DeStefano on 8/26/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var dogBreedData: BreedData
    
    var body: some View {
        VStack (spacing: 0) {
            
    //breed title
            Text(dogBreedData.breed)
            .font(.custom("Papyrus", size: 30))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .lineLimit(2)
            .multilineTextAlignment(.center)
     
    //rectangle ZStack
    ZStack {
        Rectangle().frame(width: 370, height: 420).cornerRadius(20).shadow(color: .init(white: 0.8), radius: 10)
        Rectangle().frame(width: 350, height: 400).cornerRadius(30).shadow(color: .init(white: 0.9), radius: 10)
        
    //image / description VStack
       VStack {
        Image(dogBreedData.imageName)
           .resizable()
           .scaledToFit()
           .cornerRadius(10)
        .padding(6)
        //adds a gradient border - the size of the border is controlled by the padding above
        .background(LinearGradient(gradient: Gradient(colors: [.white, .black, .white, .black, .white]), startPoint: .top, endPoint: .bottom)).cornerRadius(10)
           
        Text(dogBreedData.description)
           .lineLimit(10)
           .foregroundColor(.white)
           .multilineTextAlignment(.center)
          }.padding(35)
       }
            
     Spacer()
            
        HStack {
            LabelsAndIconView()
            HStack {
                VStack(alignment: .leading) {
                    DisplayDataLabels(label: dogBreedData.group)
                    DisplayDataLabels(label: dogBreedData.height)
                    DisplayDataLabels(label: dogBreedData.weight)
                    DisplayDataLabels(label: dogBreedData.lifeExpectancy)
                    DisplayDataLabels(label: dogBreedData.breedPopularity)
                 }
                .frame(maxWidth: 200, maxHeight: 350)
            }
          }
            
        }.background(Image("backgroundLines").resizable().frame(width: UIScreen.main.bounds.width, height: 1100))
     }
}



struct DisplayDataLabels : View {
   var label = ""
    var body: some View {
        VStack {
            Text(label)
            .font(.headline)
            .foregroundColor(Color(.white))
            .padding(.leading, 10)
            }.padding(15)
     }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        DetailView(dogBreedData: breeds[2])
    }
}

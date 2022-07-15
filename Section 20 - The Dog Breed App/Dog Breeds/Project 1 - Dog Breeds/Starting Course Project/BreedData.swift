//
//  BreedData.swift
//  Starting Course Project
//
//  Created by Stephen DeStefano on 8/27/19.
//  Copyright © 2019 Stephen DeStefano. All rights reserved.
//

import Foundation


struct BreedData: Identifiable {
    var id = UUID()
    var breed: String
    var imageName: String
    var breedPopularity: String
    var group: String
    var description: String
    var height: String
    var weight: String
    var lifeExpectancy: String
}



let breeds = [
    BreedData(breed: "Boykin Spaniel", imageName: "boykin spaniel",  breedPopularity: "Ranks 100 of 193", group: "Sporting Group", description: "A medium-sized flushing and retrieving dog known for its rich brown coat, the Boykin Spaniel is avid, eager, merry, and trainable. This mellow housedog and tenacious bird dog was once South Carolina’s best-kept secret.", height: "15.5-18 inches", weight: "30-40 pounds", lifeExpectancy: "10-15 years"),
    
    BreedData(breed: "Brittany", imageName: "brittany",  breedPopularity: "Ranks 26 of 193", group: "Sporting Group", description: "Sportsmen on both sides of the Atlantic cherish the agile, energetic Brittany as a stylish and versatile gundog. Bright and eager at home, and tireless afield, Brittanys require a lot of exercises, preferably with their favorite humans.", height: "17.5-20.5 inches", weight: "30-40 pounds", lifeExpectancy: "12-14 years"),
        
    BreedData(breed: "Chesapeake Bay Retriever", imageName: "chesapeake bay retriever",  breedPopularity: "Ranks 45 of 193", group: "Sporting Group", description: "The Chesapeake Bay Retriever, peerless duck dog of the Mid-Atlantic, is an American original who embodies the classic traits of a good retriever: loyal, upbeat, affectionate, and tireless. The Chessie is famous for his waterproof coat.", height: "23-26 inches", weight: "65-80 pounds", lifeExpectancy: "10-13 years"),
    
    BreedData(breed: "Afghan Hound", imageName: "afghan hound",  breedPopularity: "Ranks 113 of 193", group: "Hound Group", description: "Among the most eye-catching of all dog breeds, the Afghan Hound is an aloof and dignified aristocrat of sublime beauty. Despite his regal appearance, the Afghan can exhibit an endearing streak of silliness and a profound loyalty.", height: "25-27 inches", weight: "50-60 pounds", lifeExpectancy: "12-18 years"),
    
    BreedData(breed: "Azawakh", imageName: "azawakh",  breedPopularity: "Ranks 193 of 193", group: "Hound Group", description: "Tall and elegant, the Azawakh is a West African sighthound who originates from the countries of Burkina Faso, Mali, and Niger. The Azawakh has a short, fine coat which may come in any color or color combinations.", height: "25-29 inches", weight: "44-55 pounds", lifeExpectancy: "12-15 years"),
    
    BreedData(breed: "Akita", imageName: "akita",  breedPopularity: "Ranks 47 of 193", group: "Working Group", description: "A medium-sized flushing and retrieving dog known for its rich brown coat, the Boykin Spaniel is avid, eager, merry, and trainable. This mellow housedog and tenacious bird dog was once South Carolina’s best-kept secret.", height: "26-28 inches", weight: "100-130 pounds", lifeExpectancy: "10-13 years"),
    
    BreedData(breed: "Norwich Terrier", imageName: "norwich terrier",  breedPopularity: "Ranks 108 of 193", group: "Terrier Group", description: "Norwich Terriers are plucky little earthdogs named for their hometown in England. The old cliché “a big dog in a small package” was coined for breeds like the Norwich, who can be oblivious to the fact that they are just 10 inches tall.", height: "10 inches", weight: "12 pounds", lifeExpectancy: "12-15 years"),
    
    BreedData(breed: "Wire Fox Terrier", imageName: "wire fox terrier",  breedPopularity: "Ranks 101 of 193", group: "Terrier Group", description: "The Wire Fox Terrier breed standard says they should be “on the tip-toe of expectation at the slightest provocation.” Once a mainstay of traditional British foxhunts, today’s Wire is a handsome and amusing companion and master show dog.", height: "15.5 inches", weight: "18 pounds", lifeExpectancy: "12-15 years"),
    
    BreedData(breed: "Japanese Chin", imageName: "japanese chin",  breedPopularity: "Ranks 104 of 193", group: "Toy Group", description: "The Japanese Chin is a charming toy companion of silky, profuse coat and an unmistakably aristocratic bearing. Often described as a distinctly “feline” breed, this bright and amusing lapdog is fastidious, graceful, and generally quiet.", height: "8-11 inches", weight: "7-11 pounds", lifeExpectancy: "10-12 years"),
       
    BreedData(breed: "Pomeranian", imageName: "pomeranian",  breedPopularity: "Ranks 193 of 193", group: "Toy", description: "The Pomeranian (often known as a Pom) is a breed of dog of the Spitz type that is named for the Pomerania region in north-west Poland and north-east Germany in Central Europe.", height: "12-15 Inches", weight: "8-25 Pounds", lifeExpectancy: "10-14 Years"),

    BreedData(breed: "Keeshond", imageName: "keeshond",  breedPopularity: "Ranks 95 of 193", group: "Non-Sporting", description: "The amiable Keeshond is a medium-sized spitz dog of ample coat, famous for the distinctive “spectacles” on his foxy face. Once a fixture on the canal barges of his native Holland, the Kees was, and remains, a symbol of Dutch patriotism.", height: "18 Inches", weight: "35-45 Pounds", lifeExpectancy: "12-15 Years"),
    
    BreedData(breed: "Belgian Tervuren", imageName: "belgian tervuren",  breedPopularity: "Ranks 106 of 193", group: "Non-Sporting", description: "The elegant, agile Belgian Tervuren is a bright and self-assured herding dog of medium size, known to be affectionate and possessive with loved ones. Lots of hard work and challenging play is heaven for this tireless, do-it-all dog.", height: "24-26 Inches", weight: "55-75 Pounds", lifeExpectancy: "12-14 Years"),
    
    BreedData(breed: "Icelandic Sheepdog", imageName: "icelandic sheepdog",  breedPopularity: "Ranks 155 of 193", group: "Herding", description: "The Icelandic Sheepdog, Iceland’s only native dog breed, is a charmingly friendly and faithful all-around herder of small-to-medium size. A densely coated Nordic spitz-type breed, Icelandics are enthusiastically devoted to their humans.", height: "18 Inches", weight: "30 Pounds", lifeExpectancy: "12-14 Years")







]

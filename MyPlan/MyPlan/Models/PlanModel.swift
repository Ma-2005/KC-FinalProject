//
//  PlanModel.swift
//  MyPlan
//
//  Created by Mac on 01/09/2022.
//

import Foundation

struct PlanModel: Identifiable{
    
    let id = UUID()
    
    var Country : String
    var Region : [RegionModel]
    var Days : Int
   
    
}

    var Plans = [
    
        PlanModel(Country: "Turkey", Region: [RegionModel(NameRegion: "Istanbul", Places: [PlaceModel(Name: "Bosphorus", Information: "The Bosphorus Strait or Bosporus Strait is a natural strait and an internationally significant waterway located in northwestern Turkey. It forms part of the continental boundary between Asia and Europe, and divides Turkey by separating Anatolia from Thrace.", timesOpen: "m"), PlaceModel(Name: "NN", Information: "nn", timesOpen: "M")]),RegionModel(NameRegion: "Antalya", Places: [PlaceModel(Name: "m", Information: "M", timesOpen: "s")])], Days: 7),
    
        PlanModel(Country: "UAE", Region: [RegionModel(NameRegion: "Dubai", Places: [PlaceModel(Name: "M", Information: "M", timesOpen: "n")]),RegionModel(NameRegion: "Abu Dhabi", Places: [PlaceModel(Name: "M", Information: "M", timesOpen: "c")])], Days: 14),

        PlanModel(Country: "USA", Region: [RegionModel(NameRegion: "NewYork", Places: [PlaceModel(Name: "Mahdi", Information: "MA", timesOpen: "a")])], Days: 14)

]




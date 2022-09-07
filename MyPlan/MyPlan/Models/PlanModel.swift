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

var MyReadyPlans : [PlanModel] = []

    var ReadyPlans = [
    
        PlanModel(Country: "Turkey", Region: [RegionModel(NameRegion: "Istanbul", Places: [PlaceModel(Name: "Bosphorus", Information: "The Bosphorus Strait or Bosporus Strait is a natural strait and an internationally significant waterway located in northwestern Turkey. It forms part of the continental boundary between Asia and Europe, and divides Turkey by separating Anatolia from Thrace.", timesOpen: "m"), PlaceModel(Name: "The Blue Mosque", Information: "The Blue Mosque in Istanbul, also known by its official name, the Sultan Ahmed Mosque (Turkish: Sultan Ahmet Camii), is an Ottoman-era historical mosque located in Istanbul, Turkey.  A functioning mosque, it also attracts large numbers of tourist visitors.  It was constructed between 1609 and 1616 during the rule of Ahmed I.", timesOpen: "From 9AM to 7PM"),PlaceModel(Name: "The Maiden's Tower", Information: "The Maiden's Tower (Turkish: Kız Kulesi), also known as Leander's Tower (Tower of Leandros) since the medieval Byzantine period, is a tower on a small islet at the southern entrance of the Bosphorus strait, 200 m (220 yd) from the coast of Üsküdar in Istanbul, Turkey.", timesOpen: "Temporarily closed"),PlaceModel(Name: "The Basilica Cistern", Information: "The Basilica Cistern, or Cisterna Basilica (Turkish: Yerebatan Sarnıcı or Yerebatan Saray, (Subterranean Cistern) or (Subterranean Palace), is the largest of several hundred ancient cisterns that lie beneath the city of Istanbul, Turkey. The cistern, located 150 metres (490 ft) southwest of the Hagia Sophia on the historical peninsula of Sarayburnu, was built in the 6th century during the reign of Byzantine Emperor Justinian I.[1] Today it is kept with little water, for public access inside the space.", timesOpen: "From 9AM to 7PM")]),RegionModel(NameRegion: "Antalya", Places: [PlaceModel(Name: "m", Information: "M", timesOpen: "s")])], Days: 7),
    
        PlanModel(Country: "UAE", Region: [RegionModel(NameRegion: "Dubai", Places: [PlaceModel(Name: "M", Information: "M", timesOpen: "n")]),RegionModel(NameRegion: "Abu Dhabi", Places: [PlaceModel(Name: "M", Information: "M", timesOpen: "c")])], Days: 14),

        PlanModel(Country: "USA", Region: [RegionModel(NameRegion: "NewYork", Places: [PlaceModel(Name: "Mahdi", Information: "MA", timesOpen: "a")])], Days: 14)

]





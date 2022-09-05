//
//  MyPlansModel.swift
//  MyPlan
//
//  Created by Mac on 05/09/2022.
//

import Foundation

struct MyPlansModel: Identifiable {
    
    let id = UUID()
    
    var MyCountry : String
    var MyRegion : String
    var MyDays : Int
    var MyPlaces : [String]
    var MyNote : String
    
}


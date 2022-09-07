//
//  RegionModel.swift
//  MyPlan
//
//  Created by Mac on 02/09/2022.
//

import Foundation

struct RegionModel : Identifiable{
    let id = UUID()
    
    var NameRegion : String
    var Places : [PlaceModel]
    
}



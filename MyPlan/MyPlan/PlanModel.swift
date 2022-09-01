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
    var Region : String
    var Days : Int
    var Places : [String]
    
}




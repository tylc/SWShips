//
//  ShipsModel.swift
//  SWShips
//
//  Created by Enric Herce on 1/9/21.
//

import Foundation

//Critical documentation test

struct Ships:Decodable{
    var ships:[Ship]
    
    enum CodingKeys: String, CodingKey {
        case ships = "results"
      }
}





//
//  ShipsModel.swift
//  SWShips
//
//  Created by Enric Herce on 1/9/21.
//

import Foundation

struct Ships:Decodable{
    var ships:[Ship]
    
    enum CodingKeys: String, CodingKey {
        case ships = "results"
      }
}





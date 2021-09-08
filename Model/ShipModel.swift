//
//  ShipModel.swift
//  SWShips
//
//  Created by Enric Herce on 1/9/21.
//

import Foundation

struct Ship:Identifiable, Decodable{
    var id = UUID()
    var name: String
    var model: String
    var manufacturer: String
    var cost: String
    var length: String
    var maximumSpeed: String
    var crewTotal: String
    var passengerTotal: String
    var cargoCapacity: String
    var consumables: String
    var hyperdriveRating: String
    var starshipClass: String
    var films: [String]
    
//In order to make it clearer we define a enum for the keys we have in the JSON Response.
    /**
        It's just to be clearer. We could name the variables from the ship with the key name. But it can be confusing so we came with clearer names and this struct will tell what is the JSON name
     */
    enum CodingKeys: String, CodingKey {
        case name
        case model
        case manufacturer
        case cost = "cost_in_credits"
        case length
        case maximumSpeed = "max_atmosphering_speed"
        case crewTotal = "crew"
        case passengerTotal = "passengers"
        case cargoCapacity = "cargo_capacity"
        case consumables
        case hyperdriveRating = "hyperdrive_rating"
        case starshipClass = "starship_class"
        case films
      }
}

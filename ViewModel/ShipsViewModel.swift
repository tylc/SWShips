//
//  ShipsViewModel.swift
//  SWShips
//
//  Created by Enric Herce on 1/9/21.
//

import Foundation
import Alamofire

class ShipsViewModel:ObservableObject{

    @Published var shipList:Ships = Ships(ships: [Ship]())

    
    init(){
        requestData()
    }
    
    func requestData(){
  
        AF.request("https://swapi.dev/api/starships")
            .validate()
            .responseDecodable(of:Ships.self) { response in
                guard let items:Ships = response.value else {return}
                self.shipList = items
                print (self.shipList.ships[0])
            }
        
            
    }
}
    
   

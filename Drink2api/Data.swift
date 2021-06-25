//
//  Data.swift
//  Drink2api
//
//  Created by Leonardo Paez on 16/05/21.
//

import Foundation


struct Drink: Decodable{
    
  
    let drinks:[DrinkInfo]
}

struct DrinkInfo: Decodable, Hashable {

    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String
}



//
//  DataDetailView.swift
//  Drink2api
//
//  Created by Leonardo Paez on 18/05/21.
//

import Foundation


struct DrinkDetail: Decodable {

   let drinks:[DetailDetalhes]

}

struct DetailDetalhes: Decodable,Hashable {
   
    let strDrink: String
    let strInstructions: String
    let strDrinkThumb: String
}



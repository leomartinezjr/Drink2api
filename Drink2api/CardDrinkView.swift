//
//  CardDrinkView.swift
//  Drink2api
//
//  Created by Leonardo Paez on 16/05/21.
//

import SwiftUI
import Kingfisher

struct CardDrinkView: View {
    
    
    let drink: DrinkInfo
    
    var body: some View {
        
        HStack {
            KFImage(URL(string: drink.strDrinkThumb))
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .cornerRadius(20)
           
            Text(drink.strDrink)
            .padding()
    }
    .background(Color.gray)
   
    .cornerRadius(20)
    .shadow(color: .gray, radius: 10)
        
        
    }
}



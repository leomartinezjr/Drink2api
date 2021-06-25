//
//  DetailView.swift
//  Drink2api
//
//  Created by Leonardo Paez on 18/05/21.
//

import SwiftUI

struct DetailView: View {
    
    let drink: DrinkInfo
    
    
    
    var body: some View {
        
        VStack{
            
            Image("drink")
                .resizable()
                .frame(width: 400, height: 300)
           
      
            Text (drink.idDrink)
                .padding()
            
            Text(drink.strDrink)
            
            
        }
        
        
        
        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//drinl    }
//}

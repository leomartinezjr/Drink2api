//
//  ContentView.swift
//  Drink2api
//
//  Created by Leonardo Paez on 16/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = DrinkViewModel()
    
    var body: some View {
        
        
        NavigationView {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEach(viewModel.listDrink, id: \.strDrink) { item in
                            
                            NavigationLink(destination:DetailView(drink: item)) {
                                CardDrinkView(drink: item)
                            }
                
                }
            }
                    .padding()
                }
                .navigationTitle("Drinks")
            } // coloca no primeiro elemnto do bnavvienw
        }
        
        
        
        
//        NavigationView{
//            List{
//                ForEach(viewModel.listDrink, id: \.self) { item in
//                    VStack {
//                        Text ("NOME")
//                        CardDrinkView(drink: item)
//                    }
//                }
//            }.navigationTitle("drinks")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

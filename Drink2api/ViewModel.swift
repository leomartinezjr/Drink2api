//
//  ViewModel.swift
//  Drink2api
//
//  Created by Leonardo Paez on 16/05/21.
//

import Foundation




class DrinkViewModel: ObservableObject {
    
    @Published var listDrink = [DrinkInfo]()
    @Published var listDetailDrink = [DetailDetalhes]()
  
    
    let baseURL = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic"
    
    let baseURL2 = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="
    
    init(){
       fetchPokemon()
//        print("fetchPokemon ")
    }
    
    func fetchPokemon() {
        guard let url = URL(string: baseURL) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return  print("ERRo")}
            guard let drink = try? JSONDecoder().decode(Drink.self, from: data) else {return print("Erro Jsondecoder")}
            print("drink -> ", drink )
            
            
            DispatchQueue.main.async {
                self.listDrink = drink.drinks
                
            }
            
        }.resume()
    }
    
    
    func fetchDrinkDetail(param: String) {
        let newUrl = baseURL2 + param
        
        guard let url = URL(string: newUrl) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return  print("ERRo")}
            guard let drinkDetail = try? JSONDecoder().decode(DrinkDetail.self, from: data) else {return print("Erro Jsondecoder")}
            print("drink -> ", drinkDetail )
            
            DispatchQueue.main.async {
                self.listDetailDrink = drinkDetail.drinks
                
            }
            
        }.resume()
    }
}

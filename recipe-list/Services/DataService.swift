//
//  DataService.swift
//  recipe-list
//
//  Created by Valentineejk on 21/10/2022.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        //parse local json
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        
        //check data
        guard pathString != nil else {
            return [Recipe]()
        }
        
        //get a url path
        let url = URL(fileURLWithPath: pathString!)
        
        do {
             let data = try Data(contentsOf: url)
            
                   
                   
                   //decode data
                   let decoder = JSONDecoder()
                   
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                
                for r in recipeData {
                    r.id = UUID()
                    
                    //ADD UNIQ IDS FOR INGRED
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                return recipeData
        
            } catch {
                print(error)
            }
            
        } catch  {
            //error retrieving data
            print(error)
        }
return [Recipe]()
        
    }
    
}

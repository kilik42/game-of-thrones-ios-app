//
//  Houses.swift
//  GOT
//
//  Created by marvin evins on 4/11/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import Foundation

class Houses {
    
//    private struct Returned: Codable{
//        var  name : String
//        var region :String
//        var  coatOfArms: String
//        var  words: String
//    }
    var houseArray: [HouseInfo] = []
    var  url = "https://www.anapioficeandfire.com/api/houses?page=1&pageSize=50"
    var pageNumber = 1
    
    
    func  getData(completed: @escaping ()-> ()){
        let urlString = url
        print("we are accessing the url \(urlString)")
        
        
        //create a url
        guard let url = URL(string: urlString) else{
            print("error: could not create a URL from \(urlString)")
            completed()
            return
        }
        
        //create a session
        let session = URLSession.shared
    
        //get ata with .dataTask Method
        
        let task = session.dataTask(with: url) {(data, response, error) in
            if let error = error {
                print ("error: \(error.localizedDescription)")
            }
        
        
        //deal with the data
        
        do {
            self.houseArray = try JSONDecoder().decode([HouseInfo].self, from: data!)
            
            
        }catch{
            print("JSON Error: \(error.localizedDescription)")
        }
        completed()
    }
    task.resume()
}
}

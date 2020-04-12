//
//  Houses.swift
//  GOT
//
//  Created by marvin evins on 4/11/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import Foundation

class Houses {
    var houseArray: [HouseInfo] = []
    var  url = "https://www.anapioficeandfire.com/api/houses?page=1&pageSize=50"
    var pageNumber = 1
    
    
    func  getData(completed: @escaping ()-> ()){
        let urlString = url
        print("we are accessing the url \(urlString)")]
        
        
        //create a url
        guard let url = URL(string: urlString) else{
            print("error: could not create a URL from \(urlString)")
            completed()
            return
        }
        
        //create a session
        let session = URLSession.shared
        
        
    }
    
}

//
//  ViewController.swift
//  GOT
//
//  Created by marvin evins on 4/11/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate
{
    
    
    //var houses = ["Stark", "Lanister", "Targaryen", "GreyJoy" ]
    
    var houses = Houses()
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.delegate = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houses.houseArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text =  houses.houseArray[indexPath.row].name
        return cell
    }

}


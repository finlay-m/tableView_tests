//
//  ViewController.swift
//  Contacts
//
//  Created by Finlay MacGregor on 9/11/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

// moved delegate and viewdata into this class instead of as separate extension with function
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // connects tableView object to the code
    @IBOutlet var tableView: UITableView!
    
    let myData = ["first", "second", "third", "fourth", "fifth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // needed for functionality of tableView
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    // TableView Funcs
    
    // rows will be equal to the length of the myData array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    // function goes through each cell and fills it
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // Fills cells with values from myData array
        cell.textLabel?.text = myData[indexPath.row]
        return cell
    }


}


//
//  ViewController.swift
//  Contacts
//
//  Created by Finlay MacGregor on 9/11/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//


// To create custom tableView cell:
// 1. create own custom cell file and nib for it, it is a subclass of the UITableViewCell
//     you are creating outlets for it, the outlets are for every cell
// 2. create the UI xib file and make the necessary connections, provide contraints,
//     give the identifier as the name of the file
// 3. in veiwController register that custom cell as class you're going to be using
//    when you are returing a cell, with the dq remember to cast it as the custom cell class
//    that way you can access the outlets you've created
// 4 the future: you can register many different types of cells

import UIKit

// moved delegate and viewdata into this class instead of as separate extension with function
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // connects tableView object to the code
    @IBOutlet var tableView: UITableView!
    
    let myData = ["first", "second", "third", "fourth", "fifth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tell the tableView that it's going to be using the custom DemoTableViewCell
        // this is done by register a nib for that reusable cell identifier
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        
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
        // dqs tableView cell as a customized DemoTableViewCell
        // this gives us access to the properties aka outlets we created
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        // Fills cells with values from myData, but in the format of the myLabel from DemoCell
        cell.myLabel.text = myData[indexPath.row]
        //
        cell.myImageView.backgroundColor = .red
        
        return cell
    }


}


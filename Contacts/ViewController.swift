//
//  ViewController.swift
//  Contacts
//
//  Created by Finlay MacGregor on 9/11/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // connects tableView object to the code
    @IBOutlet var tableView: UITableView!
    
    // let declares a constant immutable value
    let names = [
        "John Smith",
        "Dan Smith",
        "Jason Smith",
        "Mary Smith"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // needed for functionality of tableView
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDelegate {
    
    // prints to output when you tap a button
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
    
}

extension ViewController: UITableViewDataSource {
    
    // by default there is only 1 section in a table (think column)
    // so this func is unnecessary since it's set to return 1
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // this function defines the number of rows in the section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // number of rows depends on length of names array
        return names.count
    }
    
    // this function goes through all the cells, telling the program what to fill them with
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // important that this is "cell" which is the name defined by Table View Cell- identifier
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // part of the text that specifies that names array fills the cells
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
}

//
//  ViewController.swift
//  csvTesting
//
//  Created by Anil on 27/01/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let csvURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("users", ofType: "csv")!)
        var error: NSErrorPointer = nil
        let csv = CSV(contentsOfURL: csvURL!, error: error)!
       println(error)
        // Rows
        let rows = csv.rows
        let headers = csv.headers  //=> ["id", "name", "age"]
        let alice = csv.rows[0]    //=> ["id": "1", "name": "Alice", "age": "18"]
        let bob = csv.rows[1]      //=> ["id": "2", "name": "Bob", "age": "19"]
        
        // Columns
        let columns = csv.columns
        let names = csv.columns["name"]  //=> ["Alice", "Bob", "Charlie"]
        let ages = csv.columns["age"]    //=> ["18", "19", "20"]
    }

}


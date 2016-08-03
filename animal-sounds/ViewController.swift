//
//  ViewController.swift
//  animal-sounds
//
//  Created by Adam Goth on 8/2/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var animals = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.animals = []
        animals.append(Animal(name: "Lion"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let animal = animals[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("AnimalCell") as? AnimalCell {
            
            cell.configureCell(animal)
            
            return cell
        } else {
            return AnimalCell()
        }
    }


}


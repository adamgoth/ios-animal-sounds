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
    @IBOutlet weak var infoBtn: UIButton!
    
    var animals = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.animals = []
        animals.append(Animal(name: "Lion", color: COLOR_LION))
        animals.append(Animal(name: "Whale", color: COLOR_WHALE))
        animals.append(Animal(name: "Rooster", color: COLOR_ROOSTER))
        animals.append(Animal(name: "Pig", color: COLOR_PIG))
        animals.append(Animal(name: "Owl", color: COLOR_OWL))
        animals.append(Animal(name: "Cow", color: COLOR_COW))
        animals.append(Animal(name: "Snake", color: COLOR_SNAKE))
        animals.append(Animal(name: "Dog", color: COLOR_DOG))
        animals.append(Animal(name: "Monkey", color: COLOR_MONKEY))
        animals.append(Animal(name: "Moose", color: COLOR_LION))
        animals.append(Animal(name: "Cat", color: COLOR_WHALE))
        animals.append(Animal(name: "Elephant", color: COLOR_ROOSTER))
        animals.append(Animal(name: "Sheep", color: COLOR_SNAKE))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
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
    
    @IBAction func infoBtnPressed() {
        performSegueWithIdentifier("showInfo", sender: nil)
    }


}


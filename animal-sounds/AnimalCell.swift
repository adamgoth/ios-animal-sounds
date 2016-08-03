//
//  AnimalCell.swift
//  animal-sounds
//
//  Created by Adam Goth on 8/3/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {
    
    @IBOutlet weak var animalImg: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    
    var animal: Animal!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(animal: Animal) {
        self.animal = animal
        animalName.text = animal.name
        animalImg.image = UIImage(named: "\(animal.name)")
    }
    
    @IBAction func soundBtnPressed() {
        
    }

}

//
//  AnimalCell.swift
//  animal-sounds
//
//  Created by Adam Goth on 8/3/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit
import AVFoundation

class AnimalCell: UITableViewCell {
    
    @IBOutlet weak var animalImg: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var cellContainer: UIView!
    
    var animal: Animal!
    var sfx: AVAudioPlayer!

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
        cellContainer.backgroundColor = animal.color
    }
    
    @IBAction func soundBtnPressed() {
        do {
            try sfx = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("\(animal.name)", ofType: "mp3")!))
            
            sfx.prepareToPlay()
            sfx.play()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

}

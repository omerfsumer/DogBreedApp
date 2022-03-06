//
//  imageViewController.swift
//  DogBreedApp
//
//  Created by Ömer Faruk Sümer on 6.03.2022.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dogNamesLabel: UILabel!
    
    var selectedDogName = ""
    var selectedDogImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dogNamesLabel.text = selectedDogName
        imageView.image = selectedDogImage
        
    }
    



}

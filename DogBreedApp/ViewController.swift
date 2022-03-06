//
//  ViewController.swift
//  DogBreedApp
//
//  Created by Ömer Faruk Sümer on 6.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var DogNames = [String]()
    var DogImages = [UIImage]()
    var chosenDogName = ""
    var chosenDogImage = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        DogNames.append("Pug")
        DogNames.append("Golden Retriever")
        DogNames.append("Sausage Dog")
        DogNames.append("Boston Terrier")
        DogNames.append("American Bully")
        
        
        DogImages.append(UIImage(named: "Pug")!)
        DogImages.append(UIImage(named: "GoldenRetriever")!)
        DogImages.append(UIImage(named: "SausageDog")!)
        DogImages.append(UIImage(named: "BostonTerrier")!)
        DogImages.append(UIImage(named: "AmericanBully")!)
        
        navigationItem.title = "Dog Breeds"
        
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            DogNames.remove(at: indexPath.row)
            DogImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = DogNames[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DogNames.count
                                
                                }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenDogName = DogNames[indexPath.row]
        chosenDogImage = DogImages[indexPath.row]
        performSegue(withIdentifier: "toimageViewController", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toimageViewController" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedDogName = chosenDogName
            destinationVC.selectedDogImage = chosenDogImage
        }
    }
    
}


//
//  ViewController.swift
//  HUD Map
//

//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func searchParks(_ sender: UIButton) {
        printLocationsDetails(numberOfLocations: 10, filterBy: "Park")
    }
    @IBAction func searchBeaches(_ sender: UIButton) {
        printLocationsDetails(numberOfLocations: 10, filterBy: "Beach")
    }
    @IBAction func searchMountains(_ sender: UIButton) {
        printLocationsDetails(numberOfLocations: 10, filterBy: "Mountain")
    }
    
    @IBAction func searchLakes(_ sender: UIButton) {
        printLocationsDetails(numberOfLocations: 10, filterBy: "Lake")
    }
    @IBAction func searchCities(_ sender: UIButton) {
        printLocationsDetails(numberOfLocations: 10, filterBy: "City")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func printLocationsDetails(numberOfLocations: Int, filterBy: String?) {
        var locations = [Location]()
        
        for _ in 1...numberOfLocations {
            let location = Location()
            locations.append(location)
        }
        
        for location in locations {
            if let filterBy = filterBy {
                if location.name == filterBy {
                    print("Filter: \(filterBy)")
                    print("Name: \(location.name)")
                    print("Latitude: \(location.latitude)")
                    print("Longitude: \(location.longitude)")
                    print("Image: \(location.image)")
                    print("---")
                }
            } else {
                print("Filter: None")
                print("Name: \(location.name)")
                print("Latitude: \(location.latitude)")
                print("Longitude: \(location.longitude)")
                print("Image: \(location.image)")
                print("---")
            }
        }
    }
    
    
}

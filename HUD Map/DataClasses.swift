//
//  DataClasses.swift
//  HUD Map
//

//

import Foundation

class Location {
    let name: String
    let latitude: Double
    let longitude: Double
    let image: String
    
    private static let names = ["Park", "Beach", "Mountain", "Lake", "City"]
    private static let imageNames = ["image1.jpg", "image2.jpg", "image3.jpg", "image4.jpg", "image5.jpg"]
    
    init() {
        self.name = Location.randomName()
        self.latitude = Location.generateRandomCoordinate()
        self.longitude = Location.generateRandomCoordinate()
        self.image = Location.randomImage()
    }
    
    private static func generateRandomCoordinate() -> Double {
        return Double.random(in: -90.0...90.0)
    }
    
    private static func randomName() -> String {
        return names.randomElement() ?? "Unknown"
    }
    
    private static func randomImage() -> String {
        return imageNames.randomElement() ?? "default.jpg"
    }
}




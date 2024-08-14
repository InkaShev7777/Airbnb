//
//  Listing.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 13.08.2024.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    
    let ownerId: String
    let ownerName: String
    let ownerImageUrl: String
    
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    
    var pricePerNight: Int
    
    let latitude: Double
    let longitude: Double
    
    var imageURLs: [String]
    
    let address: String
    let city: String
    let state: String
    
    let title: String
    var rating: Double
    
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
    
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn: return "Check yourself in with the keypad."
        case .superHost: return "Superhosts are experienced, higly hosts who are commited to providing grate stars gor guests."
        }
    }
    
    var id: Int { return self.rawValue}
}

enum ListingAmenities: Int,Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .balcony: return "Belcony"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .balcony: return "building"
        case .laundry: return "washer"
        case .office: return "pencil.and.rules.fill"
        case .tv: return "tv"
        case .wifi: return "wifi"
        case .alarmSystem: return "checkerboard.shield"
        }
    }
    
    var id: Int { return self.rawValue}
}


enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town House"
        case .villa: return "Villa"
        }
    }
    
    var id: Int { return self.rawValue }
}

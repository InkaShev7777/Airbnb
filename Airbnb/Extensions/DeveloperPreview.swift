//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Ilya Schevchenko on 13.08.2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listing: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Jonh Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-1", "listing-2", "listing-3" , "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn,.superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Alice Brown",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 5,
            numberOfBeds: 3,
            pricePerNight: 450,
            latitude: 34.0522,
            longitude: -118.2437,
            imageURLs: ["listing-2", "listing-1", "listing-3" , "listing-4"],
            address: "456 Sunset Blvd",
            city: "Los Angeles",
            state: "California",
            title: "LA Downtown Condo",
            rating: 4.75,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .pool, .kitchen],
            type: .house
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Michael Johnson",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 3,
            numberOfBeds: 2,
            pricePerNight: 320,
            latitude: 40.7128,
            longitude: -74.0060,
            imageURLs: ["listing-3", "listing-2", "listing-1" , "listing-4"],
            address: "789 Broadway",
            city: "New York",
            state: "New York",
            title: "NYC Central Apartment",
            rating: 4.92,
            features: [.superHost],
            amenities: [.wifi, .tv, ],
            type: .apartment
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Emma Wilson",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 5,
            numberOfBathrooms: 4,
            numberOfGuests: 8,
            numberOfBeds: 6,
            pricePerNight: 850,
            latitude: 36.1699,
            longitude: -115.1398,
            imageURLs: ["listing-4", "listing-2", "listing-3" , "listing-1"],
            address: "123 Vegas Strip",
            city: "Las Vegas",
            state: "Nevada",
            title: "Luxury Vegas Villa",
            rating: 4.98,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .pool, .kitchen],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Oliver Davis",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 640,
            latitude: 41.8781,
            longitude: -87.6298,
            imageURLs: ["listing-1", "listing-2", "listing-3" , "listing-4"],
            address: "321 Lake Shore Dr",
            city: "Chicago",
            state: "Illinois",
            title: "Chicago Lake House",
            rating: 4.85,
            features: [.superHost],
            amenities: [.wifi, .kitchen, .balcony],
            type: .house
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Sophia Martinez",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 3,
            pricePerNight: 480,
            latitude: 29.7604,
            longitude: -95.3698,
            imageURLs: ["listing-1", "listing-2", "listing-3" , "listing-4"],
            address: "567 River Oaks Blvd",
            city: "Houston",
            state: "Texas",
            title: "Houston Urban Retreat",
            rating: 4.70,
            features: [.selfCheckIn],
            amenities: [.wifi, .balcony, .tv],
            type: .apartment
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "James Miller",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 6,
            numberOfBathrooms: 5,
            numberOfGuests: 10,
            numberOfBeds: 8,
            pricePerNight: 1050,
            latitude: 33.4484,
            longitude: -112.0740,
            imageURLs: ["listing-1", "listing-2", "listing-3" , "listing-4"],
            address: "890 Phoenix Ridge",
            city: "Phoenix",
            state: "Arizona",
            title: "Phoenix Desert Oasis",
            rating: 4.95,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .pool, .kitchen, .tv],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Ava Garcia",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 4,
            numberOfBeds: 2,
            pricePerNight: 370,
            latitude: 39.7392,
            longitude: -104.9903,
            imageURLs: ["listing-1", "listing-2", "listing-3" , "listing-4"],
            address: "234 Denver St",
            city: "Denver",
            state: "Colorado",
            title: "Denver Mountain Getaway",
            rating: 4.83,
            features: [.superHost],
            amenities: [.wifi, .balcony, .kitchen, .tv],
            type: .villa
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "William Hernandez",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 5,
            numberOfBathrooms: 4,
            numberOfGuests: 9,
            numberOfBeds: 6,
            pricePerNight: 890,
            latitude: 47.6062,
            longitude: -122.3321,
            imageURLs: ["listing-1", "listing-2", "listing-3" , "listing-4"],
            address: "123 Seattle Hill",
            city: "Seattle",
            state: "Washington",
            title: "Seattle Luxury Loft",
            rating: 4.90,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .tv, .balcony],
            type: .townHouse
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Lucas Rodriguez",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfGuests: 6,
            numberOfBeds: 4,
            pricePerNight: 530,
            latitude: 42.3601,
            longitude: -71.0589,
            imageURLs: ["listing-1", "listing-2", "listing-3" , "listing-4"],
            address: "678 Boston Commons",
            city: "Boston",
            state: "Massachusetts",
            title: "Boston Heritage Home",
            rating: 4.88,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .tv, .laundry],
            type: .house
        ),

        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            ownerName: "Mia Lopez",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 7,
            numberOfBeds: 5,
            pricePerNight: 720,
            latitude: 37.7749,
            longitude: -122.4194,
            imageURLs: ["listing-2", "listing-1", "listing-3" , "listing-4"],
            address: "901 San Francisco St",
            city: "San Francisco",
            state: "California",
            title: "San Francisco Bay View",
            rating: 4.93,
            features: [.selfCheckIn],
            amenities: [.wifi, .kitchen, .tv, .balcony],
            type: .house
        )

    ]
}

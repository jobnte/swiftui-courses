//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Jorge Bustamante on 30/07/24.
//

import SwiftUI

@Observable
class Favorites {

    private var resorts: Set<String>
    private let key = "Favorites"

    init() {
        //load our saved data
        self.resorts = []
        
        self.load()
    }

    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }

    func add(_ resort: Resort) {
        resorts.insert(resort.id)
        save()
    }

    func remove(_ resort: Resort) {
        resorts.remove(resort.id)
        save()
    }

    func save() {
        do {
            let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
            let resortIds = Array(self.resorts)
            let data = try JSONEncoder().encode(resortIds)
            try data.write(to: filename, options: [.atomicWrite, .completeFileProtection])
            print("Resort data saved")
        } catch {
            print("Unable to save data.")
        }
    }

    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }

    func load() {
        let filename = getDocumentsDirectory().appendingPathComponent("SavedPlaces")
        do {
            let data = try Data(contentsOf: filename)
            let resortIds = try JSONDecoder().decode([String].self, from: data)
            resorts = Set(resortIds)
        } catch {
            print("Unable to load saved data.")
        }
    }
}

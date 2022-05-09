//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Dimitri PL on 5/7/22.
//

import SwiftUI

@main
struct LandmarksApp: App {

    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


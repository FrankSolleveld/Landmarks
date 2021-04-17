//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Frank Solleveld on 17/04/2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

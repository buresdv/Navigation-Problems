//
//  Navigation_ProblemsApp.swift
//  Navigation Problems
//
//  Created by David Bureš on 11.10.2024.
//

import SwiftUI

@main
struct Navigation_ProblemsApp: App
{
    
    @State var appState: AppState = .init()
    @StateObject var exampleModelTracker = ExampleModelTracker()
    
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
                .environment(appState)
                .environmentObject(exampleModelTracker)
        }
    }
}

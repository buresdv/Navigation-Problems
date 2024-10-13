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
    @State var exampleModelTracker: ExampleModelTracker = .init()
    
    var body: some Scene
    {
        WindowGroup
        {
            ContentView()
                .onAppear
                {
                    exampleModelTracker.data.append(.init(name: "First"))
                    exampleModelTracker.data.append(.init(name: "Second"))
                    exampleModelTracker.data.append(.init(name: "Third"))
                }
                .environment(appState)
                .environment(exampleModelTracker)
        }
    }
}

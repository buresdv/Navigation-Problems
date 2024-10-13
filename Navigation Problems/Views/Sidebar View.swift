//
//  Sidebar View.swift
//  Navigation Problems
//
//  Created by David Bureš on 11.10.2024.
//

import SwiftUI

struct SidebarView: View
{
    @Environment(AppState.self) var appState
    @Environment(ExampleModelTracker.self) var exampleModelTracker

    var body: some View
    {
        @Bindable var appState: AppState = appState
        
        List(selection: $appState.navigationSelection)
        {
            ForEach(exampleModelTracker.data)
            { model in
                NavigationLink
                {
                    DestinationView(data: model)
                        .id(model.id)
                } label: {
                    Text(model.name)
                }
            }
            
            Text("navigationSelection: \(appState.navigationSelection?.uuidString ?? "nil")")
        }
    }
}

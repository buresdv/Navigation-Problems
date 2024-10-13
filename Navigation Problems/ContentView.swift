//
//  ContentView.swift
//  Navigation Problems
//
//  Created by David Bureš on 11.10.2024.
//

import SwiftUI

struct ContentView: View
{
    @Environment(AppState.self) var appState

    var body: some View
    {
        NavigationSplitView
        {
            SidebarView()
        } detail: {
            DefaultStackView()
        }
    }
}

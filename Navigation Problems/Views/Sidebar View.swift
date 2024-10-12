//
//  Sidebar View.swift
//  Navigation Problems
//
//  Created by David Bureš on 11.10.2024.
//

import SwiftUI

struct SidebarView: View
{
    @EnvironmentObject private var exampleModelTracker:ExampleModelTracker

    var body: some View
    {
        List(selection: $exampleModelTracker.sidebarSelection)
        {
            ForEach(exampleModelTracker.data)
            { model in
                NavigationLink(value: NavigationItem.detail(model))
                {
                    Text(model.name)
                }
                .id(model)
            }
        }
    }
}

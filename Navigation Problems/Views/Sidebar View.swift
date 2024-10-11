//
//  Sidebar View.swift
//  Navigation Problems
//
//  Created by David Bureš on 11.10.2024.
//

import SwiftUI

struct SidebarView: View
{
    @Environment(ExampleModelTracker.self) var exampleModelTracker

    var body: some View
    {
        List
        {
            ForEach(exampleModelTracker.data)
            { model in
                NavigationLink(value: model)
                {
                    Text(model.name)
                }
            }
        }
    }
}

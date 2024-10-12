//
//  Example Model Tracker.swift
//  Navigation Problems
//
//  Created by David Bureš on 11.10.2024.
//

import Foundation

enum NavigationItem: Hashable {
    case detail(ExampleModel)
    
}

class ExampleModelTracker:ObservableObject
{
    @Published var sidebarSelection: NavigationItem?
    @Published var data: [ExampleModel] = [.init(name: "First"), .init(name: "Second")]
}

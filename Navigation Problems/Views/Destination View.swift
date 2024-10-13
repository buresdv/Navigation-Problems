//
//  Destination View.swift
//  Navigation Problems
//
//  Created by David Bureš on 11.10.2024.
//

import SwiftUI

struct DestinationView: View
{
    
    let data: ExampleModel
    
    var body: some View
    {
        Text(data.name)
            .navigationTitle("Detail Page")
    }
}

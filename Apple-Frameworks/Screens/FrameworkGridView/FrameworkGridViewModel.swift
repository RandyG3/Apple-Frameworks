//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Randy on 12/29/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}

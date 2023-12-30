//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Randy on 12/29/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}

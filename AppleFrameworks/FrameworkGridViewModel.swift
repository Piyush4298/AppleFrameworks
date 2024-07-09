//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Piyush Pandey on 08/07/24.
//

import Foundation

class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
}

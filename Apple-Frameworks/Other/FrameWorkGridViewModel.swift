//
//  FrameWorkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Uzair Ahmed on 2024-05-29.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    @Published var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
}

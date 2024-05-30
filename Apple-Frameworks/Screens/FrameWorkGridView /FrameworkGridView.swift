//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Uzair Ahmed on 2024-05-28.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        AppAndName(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("APPLE Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                if let selectedFramework = viewModel.selectedFramework {
                    FrameworkDetail(framework: selectedFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}



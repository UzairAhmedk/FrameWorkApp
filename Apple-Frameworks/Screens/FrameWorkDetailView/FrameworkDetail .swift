//
//  FrameworkDetail .swift
//  Apple-Frameworks
//
//  Created by Uzair Ahmed on 2024-05-28.
//

import SwiftUI

struct FrameworkDetail: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            xdismess(isShowingDetailView: $isShowingDetailView)
            Spacer()
            AppAndName(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            if let url = URL(string: framework.urlString) {
                Link("Learn More", destination: url)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

#Preview {
    FrameworkDetail(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
//2.39.56

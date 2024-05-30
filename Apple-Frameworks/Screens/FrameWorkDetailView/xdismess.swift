//
//  xdismess.swift
//  Apple-Frameworks
//
//  Created by Uzair Ahmed on 2024-05-30.
//

import SwiftUI

struct xdismess: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            .padding()
        }
    }
}

#Preview {
    xdismess(isShowingDetailView: .constant(false))
}

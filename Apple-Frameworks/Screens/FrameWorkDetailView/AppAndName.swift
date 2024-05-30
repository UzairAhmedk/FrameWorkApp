//
//  AppAndName.swift
//  Apple-Frameworks
//
//  Created by Uzair Ahmed on 2024-05-30.
//

import SwiftUI

struct AppAndName: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
}


#Preview {
    AppAndName(framework: MockData.sampleFramework)
}

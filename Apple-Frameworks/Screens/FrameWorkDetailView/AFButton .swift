//
//  AFButton .swift
//  Apple-Frameworks
//
//  Created by Uzair Ahmed on 2024-05-29.
//

import SwiftUI

struct AFButton_: View {
    
    var Title: String
    
    var body: some View {
        
        Text(Title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        
    }
}

#Preview {
    AFButton_(Title: "test title")
}

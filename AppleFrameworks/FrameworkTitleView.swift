//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Piyush Pandey on 08/07/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack(spacing: 10){
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
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
    FrameworkTitleView(framework: MockData.sampleFramework)
}

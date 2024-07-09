//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Piyush Pandey on 08/07/24.
//

import SwiftUI

struct AFButton: View {
    var buttonTitle: String
    
    var body: some View {
        Text(buttonTitle)
            .frame(width: 300, height: 50)
            .font(.title2)
            .fontWeight(.semibold)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    AFButton(buttonTitle: "Test Title")
}

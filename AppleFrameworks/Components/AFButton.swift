//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Danil Edkin on 27.05.2024.
//

import SwiftUI

struct AFButton: View {
    let text: String
    var body: some View {
            Text(text)
                .font(.title2)
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .background(.red)
                .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(text: "Test")
    }
}

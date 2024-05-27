//
//  FrameWorkTitle.swift
//  AppleFrameworks
//
//  Created by Danil Edkin on 27.05.2024.
//

import SwiftUI

struct FrameWorkTitle: View{
    let framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
                .foregroundColor(.accentColor)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}

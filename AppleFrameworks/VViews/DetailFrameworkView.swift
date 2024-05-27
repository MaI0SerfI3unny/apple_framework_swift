//
//  DetailFrameworkView.swift
//  AppleFrameworks
//
//  Created by Danil Edkin on 25.05.2024.
//

import SwiftUI

struct DetailFrameworkView: View {
    let framework: Framework
    @Binding var boolSelected: Bool
    
    var body: some View {
        VStack{
            HeadClose(boolSelected: $boolSelected)
            Spacer()
            FrameWorkTitle(framework: framework)
            Text(framework.description)
                .font(.system(size: 22, weight: .regular))
                .padding()
            Spacer()
            Button{
                
            } label: {
                AFButton(text: "Learn More")
            }
        }
    }
}

struct DetailFrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        DetailFrameworkView(framework: MockData.sampleFramework, boolSelected: .constant(false))
            .preferredColorScheme(.dark)
    }
}

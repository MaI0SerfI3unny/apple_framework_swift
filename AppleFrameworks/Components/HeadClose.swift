//
//  HeadClose.swift
//  AppleFrameworks
//
//  Created by Danil Edkin on 28.05.2024.
//

import SwiftUI

struct HeadClose: View {
    @Binding var boolSelected: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                boolSelected = false
            } label: {
               Text("x")
                    .font(.system(size: 44, weight: .bold))
                    .foregroundColor(.white)
            }.padding()
        }    }
}

struct HeadClose_Previews: PreviewProvider {
    static var previews: some View {
        HeadClose(boolSelected: .constant(false))
    }
}

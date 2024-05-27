//
//  ContentViewModel.swift
//  AppleFrameworks
//
//  Created by Danil Edkin on 28.05.2024.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    var selectedBtn: Framework? {
        didSet{
            boolSelected = true
        }
    }
    
    @Published var boolSelected = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}

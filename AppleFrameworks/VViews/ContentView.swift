//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Danil Edkin on 20.05.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid (columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameWorkTitle(framework: framework)
                            .onTapGesture {
                                viewModel.selectedBtn = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.boolSelected) {
                    DetailFrameworkView(framework: viewModel.selectedBtn!, boolSelected: $viewModel.boolSelected)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}


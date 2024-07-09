//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Piyush Pandey on 07/07/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var gridViewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                gridViewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Frameworks")
            .sheet(isPresented: $gridViewModel.isShowingDetailView) {
                FrameworkDetailView(framework: gridViewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $gridViewModel.isShowingDetailView)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
}

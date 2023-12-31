//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Randy on 12/29/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
    
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}

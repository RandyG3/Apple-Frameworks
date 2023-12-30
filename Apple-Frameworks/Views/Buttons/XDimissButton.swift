//
//  XDimissButton.swift
//  Apple-Frameworks
//
//  Created by Randy on 12/30/23.
//

import SwiftUI

struct XDimissButton: View {
    
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDimissButton(isShowingDetailView: .constant(false))
}

//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Sawaiz Naveed on 1/1/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var framework: Framework
    var body: some View {
        Button {
            isShowingDetailView = false
        } label: {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 40,height: 40)
                    .padding()
                
            }
        }
        Spacer()
        FrameworkTitleView(framework: framework)
        Text(framework.description)
            .padding()
        Spacer()
        Button {
            isShowingSafariView = true
        } label: {
            AFButtonView(title: "Learn More")
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url : URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
        )}
}

#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}

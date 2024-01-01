//
//  AFButtonView.swift
//  Apple-Frameworks
//
//  Created by Sawaiz Naveed on 1/1/24.
//

import SwiftUI

struct AFButtonView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButtonView(title: "Test value")
}

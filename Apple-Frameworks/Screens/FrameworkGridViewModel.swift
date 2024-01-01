//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Sawaiz Naveed on 1/1/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var selectedFramework: Framework?
    {
        didSet{
            isShowingDetailView  = true
        }
    }
    
    @Published var isShowingDetailView:  Bool = false
    
}

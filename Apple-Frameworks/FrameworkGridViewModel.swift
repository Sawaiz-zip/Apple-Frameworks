//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Sawaiz Naveed on 1/1/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?
    {
        didSet{
            isShowingDetailView  = true
        }
    }
    
    @Published var isShowingDetailView:  Bool = false
    
}

//
//  HomeView.swift
//  uiViewDesign
//
//  Created by G BEN on 07/01/2023.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboard")  var userOnboardingValue : Bool = true
    var body: some View {
        
        Text("HomePage")
//        VStack(spacing:20){
//            Text("onborading")
//            Button {
//               userOnboardingValue = false
//            } label: {
//                Text("Click")
//            }
//
//        }//: end of Vstack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

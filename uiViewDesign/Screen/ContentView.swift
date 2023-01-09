//
//  ContentView.swift
//  uiViewDesign
//
//  Created by G BEN on 07/01/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboard") var userOnboardingValue : Bool = true
    var body: some View {
        ZStack{
            if  userOnboardingValue   {
                Onboarding()
            } else {
                HomeView()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

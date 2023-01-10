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
        
        ZStack{
            VStack{
                Spacer()
                ZStack{
                    CircleView(circulColor: .gray, widthHight: 200)
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                }
                Text("The time that leads to mastery is dependent on the intensity of our focus.")
                       .font(.title3)
                       .fontWeight(.light)
                       .foregroundColor(.secondary)
                       .multilineTextAlignment(.center)
                       .padding()
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .imageScale(.large)
                    
                    Text("Restart")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                } //: BUTTON
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            
    
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

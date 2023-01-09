//
//  Onboarding.swift
//  uiViewDesign
//
//  Created by G BEN on 07/01/2023.
//

import SwiftUI

struct Onboarding: View {
    @AppStorage("onboard")  var userOnboardingValue : Bool = true

    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            
            VStack(spacing:0){
                Spacer()
                Text("Share.")
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.system(size: 63))
                Text("""
it's not now much we give it but
how much love we put into it
""")
                .fontWeight(.light)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                Spacer()
                ZStack{
                    Circle()
                        .stroke(.white.opacity(0.2), lineWidth: 40)
                        .frame(minWidth: 260, minHeight: 260, alignment: .center)
                    Circle()
                        .stroke(.white.opacity(0.2), lineWidth: 80)
                        .frame(minWidth: 260, minHeight: 260, alignment: .center)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                ZStack {
                  // PARTS OF THE CUSTOM BUTTON
                  // 1. BACKGROUND (STATIC)
                  Capsule()
                    .fill(Color.white.opacity(0.2))
                  Capsule()
                    .fill(Color.white.opacity(0.2))
                    .padding(8)
                  // 2. CALL-TO-ACTION (STATIC)
                  Text("Get Started")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(x: 20)
                  // 3. CAPSULE (DYNAMIC WIDTH)
                  HStack {
                    Capsule()
                      .fill(Color("ColorRed"))
                      .frame(width:  80)
                    Spacer()
                  }
                  // 4. CIRCLE (DRAGGABLE)
                  HStack {
                    ZStack {
                      Circle()
                        .fill(Color("ColorRed"))
                      Circle()
                        .fill(.black.opacity(0.15))
                        .padding(8)
                      Image(systemName: "chevron.right.2")
                        .font(.system(size: 24, weight: .bold))
                    }
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                     //: GESTURE
                    Spacer()
                  } //: HSTACK
                } //: FOOTER
                .frame( height: 80, alignment: .center)
                .padding()
            
            }
            
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

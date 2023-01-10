//
//  Onboarding.swift
//  uiViewDesign
//
//  Created by G BEN on 07/01/2023.


import SwiftUI

struct Onboarding: View {
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @AppStorage("onboard")  var userOnboardingValue : Bool = true
    @State var offsetButton:CGFloat = 0
    
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
                    CircleView(circulColor: .white, widthHight: 200)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                ZStack {
                    // PARTS OF THE CUSTOM BUTTON
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
                            .frame(width: offsetButton + 80)
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
                        .offset(x: offsetButton)
                        .gesture(DragGesture().onChanged({ v in
                            if v.translation.width > 0 && offsetButton <= buttonWidth - 80 {
                                offsetButton = v.translation.width
                            }
                        }).onEnded({ value in
                            if self.offsetButton > buttonWidth / 2 {
                                self.offsetButton = buttonWidth - 80
                                self.userOnboardingValue = false
                            } else {
                                self.offsetButton = 0
                            }
                        }))
                        //: GESTURE
                        Spacer()
                    } //: HSTACK
                } //: FOOTER
                .frame(width: buttonWidth, height: 80, alignment: .center)
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

//
//  CircleView.swift
//  uiViewDesign
//
//  Created by G BEN on 10/01/2023.
//

import SwiftUI

struct CircleView: View {
    
   @State var circulColor: Color
   @State var widthHight :CGFloat
    var body: some View {
        ZStack{
            Circle()
                .stroke(circulColor.opacity(0.2), lineWidth: 40)
                .frame(minWidth: 200, minHeight: 200, alignment: .center)
            Circle()
                .stroke(circulColor.opacity(0.2), lineWidth: 80)
                .frame(minWidth: 200, minHeight: 200, alignment: .center)
        }.padding(45)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            CircleView(circulColor: .white, widthHight: 200)
        }
    }
}

//
//  Animations.swift
//  Anim
//
//  Created by Sherzod Fayziev on 2022/05/09.
//

import SwiftUI

struct Animations: View {
    @State var appear = false
    var body: some View {
        ZStack {
            Color(.white)
                .ignoresSafeArea()
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 300, height: 300)
                .padding(.top, 400)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 150, height: 150)
                .padding(.bottom, 500)
                .padding(.leading,200)
            Circle()
                .foregroundColor(.cyan)
                .frame(width: 150, height: 150)
                .padding(.bottom, 500)
                .padding(.trailing,300)
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.purple.opacity(0.9))
                
                    .cornerRadius(50)
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 250, height: 250)
                    .padding(.top, 400)
                
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 100, height: 100)
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
                    .padding(.leading,200)
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .padding(.leading,60)
                    .padding(.bottom,400)
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 300, height: 300)
                    .padding(.leading,300)
                    .padding(.bottom,600)
                Circle()
                    .foregroundColor(.cyan)
                    .frame(width: 240, height: 240)
                    .padding(.leading,300)
                    .padding(.top, 500)
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 180, height: 180)
                    .padding(.leading,300)
                    .padding(.top, 100)
                
                
                  
            }     .rotationEffect(Angle(degrees: appear ? 360 : 0))
                .animation(Animation.linear(duration: 30)
                    .repeatForever(autoreverses: false))
                .onAppear {
                    appear = true
                }
                
                
        } 
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}

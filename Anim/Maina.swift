//
//  Maina.swift
//  Anim
//
//  Created by Sherzod Fayziev on 2022/05/09.
//

import SwiftUI

struct Maina: View {
    @State var appear = false
    @State var email = ""
    @State var password = ""
    var body: some View {
        ZStack{
            Animations()
                .rotationEffect(Angle(degrees: appear ? 360 : 0))
                .animation(Animation.linear(duration: 20)
                    .repeatForever(autoreverses: false))
                .onAppear {
                    appear = true
                }
                .blur(radius: 90)
            ZStack{
                Rectangle()
                    .frame(width: 300, height: 340)
                    .cornerRadius(30)
                    .foregroundColor(.black.opacity(0.5))
                VStack(alignment: .leading) {
                    Text("Sign Up")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Text("Bizning platformamizga hush kelibsiz.\nSiz bu yerda Ui/Ux darslarini o'rganasiz ")
                        .foregroundColor(.white.opacity(0.5))
                        .font(.system(size: 13))
                    
                    TextField("Email", text:   $email)
                        .frame(width: 250, height: 40)
                        .padding(.horizontal)
                        .background(.black.opacity(0.4))
                        .cornerRadius(20)
                        
                    SecureField("Password", text: $password)
                        .frame(width: 250, height: 40)
                        .padding(.horizontal)
                        .background(.black.opacity(0.4))
                        .cornerRadius(20)
                    Button(action: {}, label: {
                        Text("Sign Up")
                            .frame(width: 280, height: 40)
                            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white.opacity(0.8), lineWidth: 2).blur(radius: 3))
                            
                            .shadow(color: .purple, radius: 1, x: 0, y: 0)
                            .background(.black.opacity(0.5))
                            .cornerRadius(20)
                            .foregroundColor(.white)
                    })
                    Text("Barcha huquqlar himoyalangan Ⓒ")
                        .padding(.leading)
                        .padding(.top,2)
                        .foregroundColor(.white.opacity(0.5))
                        .font(.system(size: 10))
                    HStack(spacing: 0){
                  Text("Akkauntingiz yo'qmi unda")
                            .padding(.leading)
                            .padding(.top,2)
                            .foregroundColor(.white.opacity(0.5))
                            .font(.system(size: 10))
                        Button(action: {}, label:{ Text("Ro'yhatdan o'ting")
                                .fontWeight(.bold)
                                .padding(.leading)
                                .padding(.top,2)
                                .foregroundColor(.white.opacity(0.5))
                                .font(.system(size: 10))
                        })
                    }
                    .padding(.top, 20)
 }
                Rectangle()
                    .frame(width: 250, height: 2)
                    .padding(.horizontal)
                    .foregroundColor(.black.opacity(0.3))
                    .blur(radius: 0.2)
                    .padding(.top, 230)
            }
        }
    }
}


struct Maina_Previews: PreviewProvider {
    static var previews: some View {
        Maina()
    }
}


/*
 
 Circle()
 .trim(from: 0.2, to: 1)
 .stroke(Color.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
 .frame(width: 44, height: 44)
 .rotationEffect(Angle(degrees: appear ? 360 : 0))
 .animation(Animation.linear(duration: 5)
 .repeatForever(autoreverses: false))
 .onAppear {
 appear = true
 }
 
 */

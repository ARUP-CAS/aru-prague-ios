//
//  RoamingPopup.swift
//  Archeologie
//
//  Created by Matěj Novák on 03.10.2023.
//  Copyright © 2023 Matěj Novák. All rights reserved.
//

import SwiftUI

struct RoamingPopup: View {
    @Environment(\.presentationMode) private var presentationMode

    var body: some View {
        VStack(spacing:0) {
            ZStack(alignment:.center) {
                Color("primary").frame(height: 60)
                Image("icon")
                        .resizable()
                        .frame(width: 48, height: 48)

                HStack {
                    Spacer()
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(width: 22, height: 22)
                            .padding(.trailing, 25)
                        
                    }
                }
            }
            VStack(spacing:40){
                Spacer()
                Image("roaming")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 114)
                Text("roamingText")
                    .padding(.horizontal,75)
                    .multilineTextAlignment(.center)
                Spacer()
            }
          
           
        }  .background(Color("primary")
            .opacity(0.1)
            .edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    RoamingPopup()
}

//
//  ContentView.swift
//  DringButtonDemoApp Watch App
//
//  Created by Joynal Abedin on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying: Bool = false
    
    var body: some View {
        ZStack {
            
            Circle()
                .stroke(Color.red, lineWidth: 4.0)
                .frame(width: 130, height: 130, alignment: .center)
                .scaleEffect(self.isPlaying ? 1.3 : 1.1)
                .opacity(self.isPlaying ? 0 : 1)
                .animation(.easeInOut(duration: 1), value: isPlaying)
            
            Button {
                isPlaying.toggle()
            } label: {
                Text("Dring Dring")
                    .italic()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(width: 130, height: 130)
                    .foregroundStyle(.foreground)
            }
            .buttonStyle(PlainButtonStyle())
            .background(.blue)
            .clipShape(Circle())
        }

    }
}

#Preview {
    ContentView()
}

//
//  SearchView.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 08.04.2021.
//

import SwiftUI

struct SearchView : View {
    
    @Binding var text: String
    @Binding var selection: String
    
    @State private var selectedShard = "EUNE"
    @State private var goProfile = false
    @State private var attempts = 0
    
    let shards = ["EUNE","EUW","NA"]

    var body: some View {
        NavigationView {
            
            VStack{
                
                HStack {
                    
                    Form {
                        Section(header: Text("PROFILE")) {
                            Picker("Select server", selection: $selectedShard) {
                                ForEach(shards, id: \.self) { shard in
                                    Text(shard).tag(shard)
                                }
                            }
                            .modifier(Shake(animatableData: CGFloat(attempts)))
                                
                            TextField("Type name and press enter ...", text: $text, onCommit: {
                                
                                if selectedShard != "" {
                                    goProfile = true
                                }
                                
                                else {
                                    withAnimation(.default) {
                                                        self.attempts += 1
                                                    }
                                }
                            })
                            
                        }
                    }
                }
                NavigationLink(destination: ContentView(summonerName: text, shard: selectedShard), isActive: $goProfile) {
                    Text("")
                }.hidden().frame(height: 0)
            }
        }
    }
    
    //code for shake animation taken from https://www.objc.io/blog/2019/10/01/swiftui-shake-animation/
    struct Shake: GeometryEffect {
        var amount: CGFloat = 10
        var shakesPerUnit = 3
        var animatableData: CGFloat

        func effectValue(size: CGSize) -> ProjectionTransform {
            ProjectionTransform(CGAffineTransform(translationX:
                amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)),
                y: 0))
        }
    }
}

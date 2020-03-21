//
//  ContentView.swift
//  Corona Virus Update
//
//  Created by Shreyas Papinwar on 16/03/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

import SwiftUI

struct ContentView: View{
    
    @ObservedObject var model = DataListViewModel()
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(hex: "#2c3a4d"), Color(hex: "#688bbb")]),
                startPoint: .top,
                endPoint: .bottom
            )
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                
                Text("Corona Updates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .opacity(0.4)
                
                List(model.datas) { item in
                    if item.total != "0" {
                        VStack(alignment: .leading) {
                            HStack {
                                Text(item.loc)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .opacity(0.4)
                                
                                
                                Spacer()
                                
                                //                                Image(systemName: "eye.fill").resizable()
                                //                                    .foregroundColor(.white)
                                //                                    .opacity(0.4)
                                //                                    .frame(width: 17.0, height: 13.0)
                            }
                            
                            Text(item.total + " Positive")
                                .font(.system(size: 35))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .opacity(0.9)
                            
                            Text(item.deaths + " Died")
                                .font(.system(size: 35))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .opacity(0.9)
                            Text("")
                                .padding(3)
                        }
                    }
                }
                
                
                
                Spacer()
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(hex string: String) {
        var string: String = string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if string.hasPrefix("#") {
            _ = string.removeFirst()
        }
        
        // Double the last value if incomplete hex
        if !string.count.isMultiple(of: 2), let last = string.last {
            string.append(last)
        }
        
        // Fix invalid values
        if string.count > 8 {
            string = String(string.prefix(8))
        }
        
        // Scanner creation
        let scanner = Scanner(string: string)
        
        var color: UInt64 = 0
        scanner.scanHexInt64(&color)
        
        if string.count == 2 {
            let mask = 0xFF
            
            let g = Int(color) & mask
            
            let gray = Double(g) / 255.0
            
            self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: 1)
            
        } else if string.count == 4 {
            let mask = 0x00FF
            
            let g = Int(color >> 8) & mask
            let a = Int(color) & mask
            
            let gray = Double(g) / 255.0
            let alpha = Double(a) / 255.0
            
            self.init(.sRGB, red: gray, green: gray, blue: gray, opacity: alpha)
            
        } else if string.count == 6 {
            let mask = 0x0000FF
            let r = Int(color >> 16) & mask
            let g = Int(color >> 8) & mask
            let b = Int(color) & mask
            
            let red = Double(r) / 255.0
            let green = Double(g) / 255.0
            let blue = Double(b) / 255.0
            
            self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1)
            
        } else if string.count == 8 {
            let mask = 0x000000FF
            let r = Int(color >> 24) & mask
            let g = Int(color >> 16) & mask
            let b = Int(color >> 8) & mask
            let a = Int(color) & mask
            
            let red = Double(r) / 255.0
            let green = Double(g) / 255.0
            let blue = Double(b) / 255.0
            let alpha = Double(a) / 255.0
            
            self.init(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
            
        } else {
            self.init(.sRGB, red: 1, green: 1, blue: 1, opacity: 1)
        }
    }
}


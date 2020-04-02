//
//  CoronaRow.swift
//  Corona Virus Update
//
//  Created by Shreyas Papinwar on 16/03/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

import SwiftUI

struct CoronaRow: View {
    
    let confirmed: String
    let active: String
    let deaths: String
    let lastupdatedtime: String
    let recovered: String
    let state: String
    
    @State private var showDetail = true
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(state)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .opacity(0.4)
                
                
                Spacer()
                
                
                Button(action: {
                    self.showDetail.toggle()
                }) {
                    if showDetail {
                        Image(systemName: "eye.fill").resizable()
                        .foregroundColor(.white)
                        .opacity(0.4)
                        .frame(width: 19.0, height: 13.0)
                    } else {
                        Image(systemName: "eye.slash").resizable()
                        .foregroundColor(.white)
                        .opacity(0.4)
                        .frame(width: 19.0, height: 13.0)
                    }
                }

            }
            
            if showDetail {
            
            Text(confirmed + " Positive")
                .font(.system(size: 35))
                .foregroundColor(.white)
                .fontWeight(.bold)
                .opacity(0.9)
            
            Text(deaths + " Deceased")
                .font(.system(size: 35))
                .foregroundColor(.white)
                .fontWeight(.bold)
                .opacity(0.9)
            
            } else {
                
                Text(active + " Active")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .opacity(0.9)
                
                Text(recovered + " Recovered")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .opacity(0.9)
                
            }
            
            Text("")
                .padding(3)
        }
    }
}

struct CoronaRow_Previews: PreviewProvider {
    static var previews: some View {
        CoronaRow(confirmed: "100", active: "10", deaths: "200", lastupdatedtime: "100", recovered: "20", state: "Total")
    }
}

//
//  CoronaRow.swift
//  Corona Virus Update
//
//  Created by Shreyas Papinwar on 16/03/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

import SwiftUI

struct CoronaRow: View {
        
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Maharashtra")
                    .foregroundColor(Color(hex: "#5c7aa2"))
                    .font(.footnote)
                    
                
                Spacer()
                
               Image(systemName: "eye.fill")
                .foregroundColor(Color(hex: "#5c7aa2"))
            }
            Text("Just enough")
                .font(.system(size: 40))
                .foregroundColor(.black)
                .fontWeight(.bold)
        }
    }
}

struct CoronaRow_Previews: PreviewProvider {
    static var previews: some View {
        CoronaRow()
    }
}

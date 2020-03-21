//
//  GetData.swift
//  Corona Virus Update
//
//  Created by Shreyas Papinwar on 16/03/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

import Foundation

class GetData {
    func getdata(comlpetion: @escaping ([Data]) -> ()) {
        let url = URL(string: "https://corona-api-india.herokuapp.com/data")!

        let task = URLSession.shared.dataTask(with: url) {(data, _, _) in
            let cData = try! JSONDecoder().decode([Data].self, from: data!)
            
            DispatchQueue.main.async {
                comlpetion(cData)
            }
        }

        task.resume()
    }
}

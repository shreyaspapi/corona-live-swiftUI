//
//  Data.swift
//  Corona Virus Update
//
//  Created by Shreyas Papinwar on 16/03/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

import Foundation
import SwiftUI


struct Data: Codable, Hashable, Identifiable {
    let confirmed, active, deaths: String
    let id: Int
    let lastupdatedtime, recovered, state: String
}

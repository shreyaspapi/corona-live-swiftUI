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
    let id: Int
    let loc: String
    let confirmedCasesIndian: String
    let confirmedCasesForeign: String
    let discharged: String
    let deaths: String
    let total: String
}

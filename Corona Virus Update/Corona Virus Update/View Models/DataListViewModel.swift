//
//  DataListViewModel.swift
//  Corona Virus Update
//
//  Created by Shreyas Papinwar on 17/03/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class DataListViewModel: ObservableObject {
    
    init(){
        fetchData()
    }
    
    @Published var datas = [Data](){
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchData(){
        GetData().getdata(){
            self.datas = $0
            print(self.datas)
        }
    }
    
    let didChange = PassthroughSubject<DataListViewModel, Never>()
    
}


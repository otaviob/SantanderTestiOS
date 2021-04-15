//
//  FormModel.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 13/04/21.
//

import Foundation


// STRUCTURE 
struct FormModel: Decodable {
    let cells: [Cell]
}

struct Cell: Decodable {
    let message: String
}

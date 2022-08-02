//
//  Student.swift
//  Classroom
//
//  Created by Stefania Zinno
//

import Foundation
import SwiftUI

struct Learner: Identifiable {
    
    let id = UUID()
    var name: String
    var surname: String
    var age: Int
    var imageName: String
    var shortBio: String

}

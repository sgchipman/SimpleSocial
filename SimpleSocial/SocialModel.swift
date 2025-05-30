//
//  SocialModel.swift
//  SimpleSocial
//

import Foundation


struct SocialModel: Identifiable {
    let id: Int
    let author: String
    let date: Date
    let body: String
    var favorite: Bool = false
}

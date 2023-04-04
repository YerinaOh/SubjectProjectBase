//
//  Benefit.swift
//  SubjectProjectForToss
//
//  Created by ohyesrina on 2023/04/05.
//

import Foundation


struct Benefit: Codable, Equatable {
    var id: Int?
    var name: String?
    var description: String?
    var imageURL: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case imageURL = "image_url"
    }
}

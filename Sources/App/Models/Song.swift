//
//  Song.swift
//
//
//  Created by Yasmin Carloto on 05/09/24.
//

import Foundation
import Fluent
import Vapor

final class Song: Model, Content, @unchecked Sendable {
    static let schema = "songs"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    init(){}
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}

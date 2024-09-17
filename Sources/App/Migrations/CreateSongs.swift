//
// CreateSongs.swift
//
//
//  Created by Yasmin Carloto on 05/09/24.
//

import Foundation
import Fluent
import Vapor

struct CreateSongs: Migration {
    func prepare(on database: Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("songs")
            .id()
            .field("title", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("songs")
            .delete()
    }
}

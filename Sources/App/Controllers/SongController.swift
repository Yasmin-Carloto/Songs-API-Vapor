//
//  SongController.swift
//
//
//  Created by Yasmin Carloto on 05/09/24.
//

import Foundation
import Vapor
import Fluent

struct SongController: RouteCollection {
    func boot(routes: any Vapor.RoutesBuilder) throws {
        let songs = routes.grouped("songs")
        songs.get(use: index)
        songs.post(use: create)
        songs.delete(":songID", use: delete)
        songs.put(use: update)
    }
    
    @Sendable
    func index(req: Request) async throws -> [Song] {
        return try await Song.query(on: req.db).all()
    }
    
    @Sendable
    func create(req: Request) async throws -> HTTPStatus {
        let song = try req.content.decode(Song.self)
        try await song.save(on: req.db)
        return .created
    }
    
    @Sendable
    func update(req: Request) async throws -> HTTPStatus {
        let body = try req.content.decode(Song.self)
        guard let song = try? await Song.find(body.id, on: req.db) else {
            return Abort(.notFound).status
        }
        song.title = body.title
        try await song.save(on: req.db)
        return .created
    }
    
    @Sendable
    func delete(req: Request) async throws -> HTTPStatus {
        let songID = try req.parameters.require("songID", as: UUID.self)
        guard let song = try await Song.find(songID, on: req.db) else {
            throw Abort(.notFound)
        }
        try await song.delete(on: req.db)
        return .created
    }
}

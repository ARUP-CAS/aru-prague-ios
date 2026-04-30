//
//  Content.swift
//  Archeologie
//
//  Created by Matěj Novák on 18/09/2020.
//  Copyright © 2020 Matěj Novák. All rights reserved.
//

import Foundation

struct LocationContent: Codable, Equatable {
    var type: String
    var content: ContentUnion
}
enum ContentUnion:Codable, Equatable {
    case text([TextContent])
    case video([Video])
    case model([Model])
    case image([ImageContent])
    case ar([AR])
    case sphereImage([SphereContent])

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()


        if let x = try? container.decode([Video].self) {
            self = .video(x)
            return
        }
        if let x = try? container.decode([Model].self) {
            self = .model(x)
            return
        }
        if let x = try? container.decode([AR].self) {
            self = .ar(x)
            return
        }
        if let x = try? container.decode([ImageContent].self){
            self = .image(x)
            return
        }
        if let x = try? container.decode([SphereContent].self) {
            self = .sphereImage(x)
            return
        }
        if let x = try? container.decode([TextContent].self) {
            self = .text(x)
            return
        }
        throw DecodingError.typeMismatch(ContentUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for ContentUnion"))
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .text(let x):
            try container.encode(x)
        case .image(let x):
            try container.encode(x)
        case .sphereImage(let x):
            try container.encode(x)
        case .video(let x):
            try container.encode(x)
        case .model(let x):
            try container.encode(x)
        case .ar(let x):
            try container.encode(x)
        }
    }
    
}


//
//  TopStoriesResponse.swift
//  
//
//  Created by Enes İşler on 16.05.2023.
//

import Foundation

public struct TopStoriesResponse : Decodable {
    public let results: [News]
    
    private enum RootCodingKeys: String, CodingKey {
        case results
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: RootCodingKeys.self)
        self.results = try container.decode([News].self, forKey: .results)
    }
}

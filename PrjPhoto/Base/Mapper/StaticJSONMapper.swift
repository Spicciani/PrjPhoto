//
//  StaticJSONMapper.swift
//  PrjPhoto
//
//  Created by MacMini on 15/11/22.
//

import Foundation

struct StaticJSONMapper{
    static func decode<T:Decodable>(file:String, type:T.Type) throws  -> T{
        guard let path = Bundle.main.path(forResource: file, ofType: "json"), let data = FileManager.default.contents(atPath: path) else {
            throw MappingError.filedToGetContent
        }
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let obj = try decoder.decode(type, from: data)
        
        return obj;
    }

}

extension StaticJSONMapper{
    enum MappingError:Error{
        case filedToGetContent
    }
}

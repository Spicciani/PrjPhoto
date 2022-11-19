//
//  UsersResponse.swift
//  PrjPhoto
//
//  Created by MacMini on 15/11/22.
//

// MARK: - UsersResponse
struct UsersResponse: Codable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support
}

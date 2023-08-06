//
//  PostAuthor.swift
//  AutoMyTestSUI
//
//  Created by Максим Нурутдинов on 06.08.2023.
//

struct PostAuthor: Codable {
    var id: Int
    var username: String
    var avatar: AuthorAvatar
    var autoCount: Int
    var mainAutoName: String

    enum CodingKeys: String, CodingKey {
        case id
        case username
        case avatar
        case autoCount = "auto_count"
        case mainAutoName = "main_auto_name"
    }
}

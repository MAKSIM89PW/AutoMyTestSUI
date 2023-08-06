//
//  Car.swift
//  AutoMyTestSUI
//
//  Created by Максим Нурутдинов on 06.08.2023.
//

import Foundation

struct Car: Codable {
    var carInfo: CarInfo
    var user: CarUser

    enum CodingKeys: String, CodingKey {
        case carInfo = "car"
        case user
    }
}

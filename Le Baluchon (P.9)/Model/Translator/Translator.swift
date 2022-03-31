//
//  TranslatorAPI.swift
//  Le Baluchon
//
//  Created by Dusan Orescanin on 24/03/2022.
//

import Foundation

struct TranslationResponse: Codable {
    struct Data: Codable {
        struct Translations: Codable {
            let translatedText: String
        }
        let translations: [Translations]
    }
    let data : Data
}

// MARK: - Json Response

//
//{
//    "data": {
//        "translations": [
//            {
//                "translatedText": "Les vies des Noirs comptent"
//            }
//        ]
//    }
//}

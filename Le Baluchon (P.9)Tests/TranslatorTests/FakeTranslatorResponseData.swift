//
//  FakeTranslatorResponseData.swift
//  Le Baluchon Tests
//
//  Created by Dusan Orescanin on 24/03/2022.
//

import Foundation

class FakeTranslatorResponseData {
    // MARK: - Data
    static var translatorCorrectData: Data {
        let bundle = Bundle(for: FakeTranslatorResponseData.self)
        let url = bundle.url(forResource: "Translate", withExtension: "json")!
        return try! Data(contentsOf: url)
    }
    
    static let translatorIncorrectData = "error".data(using: .utf8)
    
    // MARK: - Response
    static let responseOK = HTTPURLResponse(
        url: URL(string: "https://github.com")!,
        statusCode: 200, httpVersion: nil, headerFields: nil)!
    static let responseKO = HTTPURLResponse(
        url: URL(string: "https://github.com")!,
        statusCode: 500, httpVersion: nil, headerFields: nil)!
    
    // MARK: - Error
    class TranslatorError: Error{}
    static let error = TranslatorError()
}

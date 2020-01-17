//
// BrandedFoodObjectCountryDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing additional information on the countries where this item is found */
open class BrandedFoodObjectCountryDetails: JSONEncodable {
    /** The number of countries where English is the country&#x27;s primary language */
    public var englishSpeaking: Int32?
    /** The number of countries where English is not the country&#x27;s primary language */
    public var nonEnglishSpeaking: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["english_speaking"] = self.englishSpeaking?.encodeToJSON()
        nillableDictionary["non_english_speaking"] = self.nonEnglishSpeaking?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

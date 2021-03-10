//
// RecipeObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Please read the description of each field in this API response object example. By default, the value of each field is **null**. This indicates an unknown state or that no data exists. */
open class RecipeObject: JSONEncodable {
    /** An array containing an object for each individual item returned by your API call. */
    public var items: [RecipeObjectItems]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["items"] = self.items?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

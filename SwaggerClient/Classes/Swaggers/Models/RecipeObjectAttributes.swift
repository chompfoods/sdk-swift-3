//
// RecipeObjectAttributes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing recipe attributes */
open class RecipeObjectAttributes: JSONEncodable {
    /** The time it takes to prep this recipe */
    public var prepTime: String?
    /** The total time it takes to make this recipe */
    public var totalTime: String?
    /** The number of servings this recipe makes */
    public var servings: String?
    /** The size of each serving */
    public var servingSize: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["prep_time"] = self.prepTime
        nillableDictionary["total_time"] = self.totalTime
        nillableDictionary["servings"] = self.servings
        nillableDictionary["serving_size"] = self.servingSize

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

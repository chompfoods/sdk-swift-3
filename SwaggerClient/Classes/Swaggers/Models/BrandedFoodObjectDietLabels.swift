//
// BrandedFoodObjectDietLabels.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing this item&#x27;s compatibility grades for each supported diet */
open class BrandedFoodObjectDietLabels: JSONEncodable {
    public var vegan: BrandedFoodObjectDietLabelsVegan?
    public var vegetarian: BrandedFoodObjectDietLabelsVegetarian?
    public var glutenFree: BrandedFoodObjectDietLabelsGlutenFree?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["vegan"] = self.vegan?.encodeToJSON()
        nillableDictionary["vegetarian"] = self.vegetarian?.encodeToJSON()
        nillableDictionary["gluten_free"] = self.glutenFree?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

//
// BrandedFoodObjectDietFlags.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing information on an individual ingredient that was flagged as potentially not being compatible with a certain diet */
open class BrandedFoodObjectDietFlags: JSONEncodable {
    /** Ingredient name */
    public var ingredient: String?
    /** Description of the ingredient */
    public var ingredientDescription: String?
    /** Name of the diet with which this ingredient may not be compatible */
    public var dietLabel: String?
    /** A description of if we believe this ingredient is compatible with the diet */
    public var isCompatible: String?
    /** A numeric representation of if we believe this ingredient is compatible with the diet. Higher values indicate more compatibility */
    public var compatibilityLevel: Int32?
    /** A description of how we graded this ingredient for compatibility with the diet */
    public var compatibilityDescription: String?
    /** Boolean representing if the ingredient is a known allergen */
    public var isAllergen: Bool?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["ingredient"] = self.ingredient
        nillableDictionary["ingredient_description"] = self.ingredientDescription
        nillableDictionary["diet_label"] = self.dietLabel
        nillableDictionary["is_compatible"] = self.isCompatible
        nillableDictionary["compatibility_level"] = self.compatibilityLevel?.encodeToJSON()
        nillableDictionary["compatibility_description"] = self.compatibilityDescription
        nillableDictionary["is_allergen"] = self.isAllergen

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

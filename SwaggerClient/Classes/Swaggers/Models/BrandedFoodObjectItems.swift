//
// BrandedFoodObjectItems.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing information for this specific item. */
open class BrandedFoodObjectItems: JSONEncodable {
    /** EAN/UPC barcode */
    public var barcode: String?
    /** Item name as provided by brand owner or as shown on packaging */
    public var name: String?
    /** The brand name that owns this item */
    public var brand: String?
    public var ingredients: BrandedFoodObjectIngredients?
    public var package: BrandedFoodObjectPackage?
    public var serving: BrandedFoodObjectServing?
    public var categories: [String]?
    public var nutrients: BrandedFoodObjectNutrients?
    public var calorieConversionFactor: BrandedFoodObjectCalorieConversionFactor?
    /** The multiplication factor used to calculate protein from nitrogen */
    public var proteinConversionFactor: BigDecimal?
    public var dietLabels: BrandedFoodObjectDietLabels?
    /** An array of ingredient objects that were flagged while grading this item for compatibility with each diet */
    public var dietFlags: [BrandedFoodObjectDietFlags]?
    public var packagingPhotos: BrandedFoodObjectPackagingPhotos?
    /** An array of objects containing the constituent parts of a food (e.g. bone is a component of meat) */
    public var components: [BrandedFoodObjectComponents]?
    /** An array of objects containing information on discrete amounts of a food found in this item */
    public var portions: [BrandedFoodObjectPortions]?
    /** An array of ingredients in this item that may cause allergic reactions in people */
    public var allergens: [String]?
    /** An array of brands we have associated with this item. Some items are sold by more than 1 brand. */
    public var brandList: [String]?
    /** An array of countries where this item is sold */
    public var countries: [String]?
    public var countryDetails: BrandedFoodObjectCountryDetails?
    /** An array of ingredients made from palm oil */
    public var palmOilIngredients: [String]?
    /** An array of this item&#x27;s ingredients */
    public var ingredientList: [String]?
    /** A boolean indicating if we have English ingredients for this item */
    public var hasEnglishIngredients: Bool?
    /** An array of minerals that this item contains */
    public var minerals: [String]?
    /** An array of trace ingredients that may be found in this item */
    public var traces: [String]?
    /** An array of vitamins that are found in this item */
    public var vitamins: [String]?
    /** An array containing other names commonly associated with this item. These generally clarify what the item is (e.g. when the brand name is \&quot;BRAND&#x27;s Spicy Enchilada\&quot; a common name may be \&quot;Chicken enchilada\&quot;) */
    public var commonNames: [String]?
    /** A description of this item */
    public var description: String?
    /** An array of keywords that can be used to describe this item */
    public var keywords: [String]?
    /** Comments on any unusual aspects of this item. Examples might include unusual aspects of the food overall. */
    public var footnote: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["barcode"] = self.barcode
        nillableDictionary["name"] = self.name
        nillableDictionary["brand"] = self.brand
        nillableDictionary["ingredients"] = self.ingredients?.encodeToJSON()
        nillableDictionary["package"] = self.package?.encodeToJSON()
        nillableDictionary["serving"] = self.serving?.encodeToJSON()
        nillableDictionary["categories"] = self.categories?.encodeToJSON()
        nillableDictionary["nutrients"] = self.nutrients?.encodeToJSON()
        nillableDictionary["calorie_conversion_factor"] = self.calorieConversionFactor?.encodeToJSON()
        nillableDictionary["protein_conversion_factor"] = self.proteinConversionFactor?.encodeToJSON()
        nillableDictionary["diet_labels"] = self.dietLabels?.encodeToJSON()
        nillableDictionary["diet_flags"] = self.dietFlags?.encodeToJSON()
        nillableDictionary["packaging_photos"] = self.packagingPhotos?.encodeToJSON()
        nillableDictionary["components"] = self.components?.encodeToJSON()
        nillableDictionary["portions"] = self.portions?.encodeToJSON()
        nillableDictionary["allergens"] = self.allergens?.encodeToJSON()
        nillableDictionary["brand_list"] = self.brandList?.encodeToJSON()
        nillableDictionary["countries"] = self.countries?.encodeToJSON()
        nillableDictionary["country_details"] = self.countryDetails?.encodeToJSON()
        nillableDictionary["palm_oil_ingredients"] = self.palmOilIngredients?.encodeToJSON()
        nillableDictionary["ingredient_list"] = self.ingredientList?.encodeToJSON()
        nillableDictionary["has_english_ingredients"] = self.hasEnglishIngredients
        nillableDictionary["minerals"] = self.minerals?.encodeToJSON()
        nillableDictionary["traces"] = self.traces?.encodeToJSON()
        nillableDictionary["vitamins"] = self.vitamins?.encodeToJSON()
        nillableDictionary["common_names"] = self.commonNames?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["keywords"] = self.keywords?.encodeToJSON()
        nillableDictionary["footnote"] = self.footnote

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

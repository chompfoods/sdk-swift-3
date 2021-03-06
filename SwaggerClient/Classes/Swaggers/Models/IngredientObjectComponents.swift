//
// IngredientObjectComponents.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing information on a specific component of this food item */
open class IngredientObjectComponents: JSONEncodable {
    /** The kind of component, e.g. bone */
    public var name: String?
    /** The weight of the component as a percentage of the total weight of the food */
    public var pctWeight: BigDecimal?
    /** The weight of the component in grams */
    public var gramWeight: BigDecimal?
    /** Whether the component is refuse, i.e. not edible */
    public var isRefuse: Bool?
    /** The number of obersvations on which the measure is based */
    public var dataPoints: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["pct_weight"] = self.pctWeight?.encodeToJSON()
        nillableDictionary["gram_weight"] = self.gramWeight?.encodeToJSON()
        nillableDictionary["is_refuse"] = self.isRefuse
        nillableDictionary["data_points"] = self.dataPoints?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

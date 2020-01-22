//
// BrandedFoodObjectPackage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing basic packaging information about this item */
open class BrandedFoodObjectPackage: JSONEncodable {
    /** Package quantity */
    public var quantity: Int32?
    /** Package size */
    public var size: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["size"] = self.size

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

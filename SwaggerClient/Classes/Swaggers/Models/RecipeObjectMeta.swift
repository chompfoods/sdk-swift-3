//
// RecipeObjectMeta.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An object containing this item&#x27;s compatibility grades for each supported diet */
open class RecipeObjectMeta: JSONEncodable {
    /** URL to the recipe. You must link back to the recipe when displaying it. */
    public var url: String?
    public var images: RecipeObjectMetaImages?
    /** The source of the recipe. You must attribute this source when displaying this recipe. */
    public var source: String?
    /** This recipe&#x27;s cuisine */
    public var cuisine: String?
    /** The date when this recipe was created */
    public var created: String?
    /** The date when this recipe was most recently modified */
    public var modified: String?
    /** Additional information about this recipe&#x27;s nutrients */
    public var nutrientsNotice: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["url"] = self.url
        nillableDictionary["images"] = self.images?.encodeToJSON()
        nillableDictionary["source"] = self.source
        nillableDictionary["cuisine"] = self.cuisine
        nillableDictionary["created"] = self.created
        nillableDictionary["modified"] = self.modified
        nillableDictionary["nutrients_notice"] = self.nutrientsNotice

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

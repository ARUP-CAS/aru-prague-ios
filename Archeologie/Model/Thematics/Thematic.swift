// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let thematic = try? newJSONDecoder().decode(Thematic.self, from: jsonData)
//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - Thematic
struct Thematic: Codable, Equatable, Place {
    var id: Int
    var title: String
    var latitude, longitude: Double
    var locations: [Int]
    var image: String
    var logo1: String
    var logo1URL: String?
    var logo2: String
    var logo2URL: String?
    var logo3: String
    var logo3URL: String?
    var logo4: String
    var logo4URL: String?
    var author: String?
    var professionalCooperation, artisticsCooperation, thanks, characteristics: String?
    var geoJSON: GeoJSON?

    var coordinate:CLLocationCoordinate2D {
          return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
      }
    
    enum CodingKeys: String, CodingKey {
         case id, title, latitude, longitude, locations, image, logo1, logo2, logo3, logo4, author, professionalCooperation, artisticsCooperation, thanks, characteristics
         case geoJSON = "geoJson"
        case logo1URL = "logo1_url"
        case logo2URL = "logo2_url"
        case logo3URL = "logo3_url"
        case logo4URL = "logo4_url"
     }
}


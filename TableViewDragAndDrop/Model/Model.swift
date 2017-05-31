/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The model object for the table view.
*/

import Foundation

/// The data model used to populate the table view on app launch.
struct Model {
    private(set) var placeNames = [
        "Adler Planetarium",
        "Art Institute of Chicago",
        "Field Museum of Natural History",
        "Lincoln Park Zoo",
        "Millennium Park",
        "Museum of Science and Industry",
        "Navy Pier",
        "Shedd Aquarium",
        "Wrigley Field"
    ]
    
    /// The traditional method for rearranging rows in a table view.
    mutating func moveItem(at sourceIndex: Int, to destinationIndex: Int) {
        guard sourceIndex != destinationIndex else { return }
        
        let place = placeNames[sourceIndex]
        placeNames.remove(at: sourceIndex)
        placeNames.insert(place, at: destinationIndex)
    }
    
    /// The method for adding a new item to the table view's data model.
    mutating func addItem(_ place: String, at index: Int) {
        placeNames.insert(place, at: index)
    }
}

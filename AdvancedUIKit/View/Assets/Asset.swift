//
//  Asset.swift
//  UIViewExtensions
//
//  Created by Diogo Infante on 30/10/21.
//

import UIKit

/// As  <AppName> has many assets this enum lists every asset used on the app
/// This enum is a string typed so the asset name is equal to the case
/// There is a get static function to get a UIImage from the asset and handle nil case
enum Asset: String {
    /// Empty
    case empty
    // MARK: - Common
    /// Backgrounds
    case background
    // MARK: - Scenes
    /// Animation Tutorial Scene
    case circle
    case square
    case star
    // MARK: - Methods
    /// Gets an UIImage from given asset if it's a valid one.
    /// - Parameters:
    ///     - asset: A case from Assets enum that is also the image name
    /// - Returns:
    ///     - A UIImage from the given asset
    static func get(_ asset: Asset) -> UIImage {
        guard let image = UIImage(named: asset.rawValue) else {
            return UIImage()
        }
        return image
    }
}

//
//  LottieAnimations.swift
//  LearnApp
//
//  Created by Ahmad Qureshi on 15/11/22.
//

import Foundation
public enum LottieFilesName: String {
    case preloader
    case launchScreen
    case community
    case doubt_resolution
    case learning_map
    public var set: String {
        self.rawValue
    }
}

//
//  File.swift
//  
//
//  Created by Ahmad Qureshi on 16/01/23.
//

import Foundation
import SwiftUI

public enum ColorAsset: String {
    case sharkBlack
    case charadeBlack
    case manateBlue
    case dodgerBlue
    case silverGray
    case mishkaGray
    case redOrangeLight
    case redOrange
    case caribbeanGreen
    case darkGreen
    case gunPowderBlack
    case eveningGreen
    case lightSlateGray
    case tunaGray
    case neroGray
    case raisinBlack
    case manatee
    case auroMetalSaurus
    case cyanBlue
    case osloGrey
    case bluishCyan
    case tealishBlue
    case santaGrey
    case darkJungleGreen
    case paleAqua
    case mirage
    case balticSea
    case silverSand
    case bleachedCegar
    case shipGrey
    case zeus
    case coolGrey
    case timberWolf
    case concord
    case oilMirage
    case ebonyClay
    case mountainMist
    case outerSpace
    case darkPastelGreen
    case iridium
    case vampireGrey
    case heavyMetal
    case lotusRed
    case blackRock
    case oldSilver
    case charlestonGreen
    case yellowGradient
    case roseGradient
    case violetGradient
    case shaftGrey
    case fuscousGrey
    case darkLiver
    case darkSeafoam
    case cadetGrey
    case codGrey
    case settingTitle
    case seekbarBuffered
    case seekbarProgress
    case seekbarTrack
    @available(iOS 13.0, *)
    public var set : Color {
        return Color(self.rawValue, bundle: .module)
    }
}

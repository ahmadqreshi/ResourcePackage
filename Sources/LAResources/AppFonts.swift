//
//  File.swift
//  
//
//  Created by Ahmad Qureshi on 18/01/23.
//

import SwiftUI

public enum AppFonts: String, CaseIterable {
    case manropeMedium = "Manrope-Medium"
    case manropeSemibold = "Manrope-SemiBold"
    case manropeExtrabold = "Manrope-ExtraBold"
    case manropeRegular = "Manrope-Regular"
    case manropeExtraLight = "Manrope-ExtraLight"
    case manropeLight = "Manrope-Light"
    case manropeBold = "Manrope-Bold"
    case antonRegular = "Anton-Regular"
}
extension AppFonts {
    public func withSize(_ fontSize: CGFloat) -> Font {
        let font = Font.custom(self.rawValue, size: fontSize)
        return font
    }
    
    public func withDefaultSize() -> Font {
        let font = Font.custom(self.rawValue, size: 16.0)
        return font
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from filename: \(fontName) with extension \(fontExtension)")
        }
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
    
    public static func registerFonts() {
        AppFonts.allCases.forEach {
            registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: "ttf")
        }
    }
}

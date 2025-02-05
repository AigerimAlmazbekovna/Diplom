//
//  Constants.swift
//  AigerimDiplom1
//
//  Created by Айгерим on 05.11.2024.
//

import Foundation
import UIKit
enum ColorType {
    enum ViewColor: String {
        case backGroundColorView = "#E5E5E5"
    }
    enum ButtonColor: String {
        case buttonBackGroundBlackColor = "#2B3940"
    }
    enum LabelTextColor: String {
        case textBlackColor = "#1F1E1E"
        case textOrangeColor = "#F69707"
        case textWhiteColor = "#FFFFFF"
        case textLightColor = "#D9D9D9"
        case textDescriptionColor = "#7E8183"
    }
}

enum FontTextType: String {
    case medium = "rubik-medium"
    case bold = "rubik-semi-bold"
    case regular = "rubik-regular"
}

func transliterate(nonLatin: String) -> String {
    return nonLatin
        .applyingTransform(.toLatin, reverse: false)?
        .applyingTransform(.stripDiacritics, reverse: false)?
        .lowercased()
        .replacingOccurrences(of: " ", with: "_") ?? nonLatin
}


let defaultImageData = UIImage(named: "logo")?.pngData()

var currentUserUID: String? {
    get {
        UserDefaults.standard.string(forKey: "currentUserUID_Key")
    }
    set {
        UserDefaults.standard.set(newValue, forKey: "currentUserUID_Key")
    }
}

var CurrentUser: User?

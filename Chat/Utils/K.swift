//
//  Constants.swift
//  Chat
//
//  Created by Emerson Javid Gonzalez Morales on 26/05/20.
//  Copyright © 2020 Emerson Javid Gonzalez Morales. All rights reserved.
//

struct K {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerORLoginSegue = "goToRegisterORLogin"
    static let register = "Register"
    static let chatSegue = "goToChat"
    static let buttonLogin = "Login"
    static let appName = "Chat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }

}

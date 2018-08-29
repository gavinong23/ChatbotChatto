//
//  TextModel.swift
//  ChattoChatApp
//
//  Created by Alif on 12/10/2017.
//  Copyright © 2017 Alif. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class TextButtonModel: TextMessageButtonModel<MessageModel> {
    
    static let chatItemType = "textButton"

    
    
    override init(messageModel: MessageModel, text: String, button: UIButton) {
        super.init(messageModel: messageModel, text: text, button: button)
    }
    
    var status: MessageStatus {
        get {
            return self._messageModel.status
        }
        set {
            self._messageModel.status = newValue
        }
    }
}

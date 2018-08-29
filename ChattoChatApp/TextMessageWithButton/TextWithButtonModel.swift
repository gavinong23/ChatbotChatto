//
//  TextWithButtonModel.swift
//  ChattoChatApp
//
//  Created by Gavin.ong on 26/08/2018.
//  Copyright © 2018 Alif. All rights reserved.
//

import Foundation
import Chatto
import UIKit
import ChattoAdditions



class TextWithButtonModel : TextMessageModelProtocol{
    var text: String
    
    var messageModel: MessageModelProtocol
    
    let uid: String
    let button: [UIButton]
    let type: String = TextWithButtonModel.chatItemType
    let date: Date
    
    static var chatItemType: ChatItemType{
        return "TextWithButton"
    }
    
    init(messageModel: MessageModelProtocol, uid:String, date: Date, text:String, button: [UIButton]){
        self.messageModel = messageModel
        self.text = text
        self.uid = uid
        self.button = button
        self.date = date
    }
}





//
//  TextWithButtonPresenter.swift
//  ChattoChatApp
//
//  Created by Gavin.ong on 26/08/2018.
//  Copyright © 2018 Alif. All rights reserved.
//

import Foundation
import UIKit
import Chatto
import ChattoAdditions


public class TextWithButtonPresenterBuilder: ChatItemPresenterBuilderProtocol{
    
    public func canHandleChatItem(_ chatItem: ChatItemProtocol) -> Bool {
        return chatItem is TextWithButtonModel
    }
    
    public func createPresenterWithChatItem(_ chatItem: ChatItemProtocol) -> ChatItemPresenterProtocol {
        assert(self.canHandleChatItem(chatItem))
        return TextWithButtonPresenter(textWithButtonModel: chatItem as! TextWithButtonModel)
    }
    
   
    public var presenterType: ChatItemPresenterProtocol.Type {
        return TextWithButtonPresenter.self
    }

}

class TextWithButtonPresenter: ChatItemPresenterProtocol {
    
    let textWithButtonModel: TextWithButtonModel
    
    init(textWithButtonModel: TextWithButtonModel){
        self.textWithButtonModel = textWithButtonModel
    }
    
//      private static let cellReuseIdentifier = TextWithButtonCollectionViewCell.self.description()
    
    static func registerCells(_ collectionView: UICollectionView) {
        collectionView.register(UINib(nibName: "TextWithButtonCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        
    }
    
    
    func dequeueCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
       return collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    }
    
    func configureCell(_ cell: UICollectionViewCell, decorationAttributes: ChatItemDecorationAttributesProtocol?) {
        guard let textWithButtonCell = cell as? TextWithButtonCollectionViewCell else{
            assert(false, "expecting status cell")
            return
        }
        
     
        
        textWithButtonCell.messageTextView.text = self.textWithButtonModel.text
        // here can set the cell text those
        
//        self.textWithButtonModel.
        
//        textWithButtonModel.
        

        if self.textWithButtonModel.isIncoming{
            textWithButtonCell.containerLeading.constant = 10
            textWithButtonCell.containerTrailing.constant = UIScreen.main.bounds.width / 2.5
        }else{
            textWithButtonCell.containerTrailing.constant = 0
            textWithButtonCell.containerLeading.constant = 0
        }
    }
    
    var canCalculateHeightInBackground: Bool {
        return true
    }
    
    func heightForCell(maximumWidth width: CGFloat, decorationAttributes: ChatItemDecorationAttributesProtocol?) -> CGFloat {
        
        let quantityOfButton = 2
        
        let textHeight = self.textWithButtonModel.text.height(withConstrainedWidth: width / 1.5, font: UIFont.systemFont(ofSize: 18)) 
        
    

        print(textHeight)
        
        return textHeight
    }
    
    
    
    
    
    

    
    

    
    
}

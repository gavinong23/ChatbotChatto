//
//  TextWithButtonCollectionViewCell.swift
//  ChattoChatApp
//
//  Created by Gavin.ong on 26/08/2018.
//  Copyright © 2018 Alif. All rights reserved.
//

import UIKit
import Chatto
import ChattoAdditions

class TextWithButtonCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var containerLeading: NSLayoutConstraint!
    
    @IBOutlet weak var containerTrailing: NSLayoutConstraint!
    //    @IBOutlet weak var messageTextView: UITextView!

    @IBOutlet weak var buttonContainerView: UIView!
    
    @IBOutlet weak var messageTextView: UITextView!
    
    @IBOutlet weak var buttonStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        self.messageTextView.isScrollEnabled = false
        
        self.messageTextView.isEditable = false
        
        self.contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
  
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
//        self.messageTextView.bounds.size = self.messageTextView.sizeThatFits(self.contentView.bounds.size)
    
//        self.messageTextView.center = self.contentView.center
        
//        self.buttonStackView.isHidden = true
        
        
//        self.buttonContainerView.bounds.size = self.buttonContainerView.sizeThatFits(self.messageTextView.bounds.size)
        
    

//        self.buttonStackView.bounds.size = self.buttonStackView.sizeThatFits(self.messageTextView.bounds.size)

//        self.buttonStackView.center   = self.contentView.center
    }
    

    
  

}

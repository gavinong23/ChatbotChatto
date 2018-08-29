//
//  InputBarUIView.swift
//  ChattoChatApp
//
//  Created by Gavin.ong on 24/08/2018.
//  Copyright © 2018 Alif. All rights reserved.
//

import UIKit

class InputBarUIView: UIView {

    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView(){
        Bundle.main.loadNibNamed("InputBarUIView", owner: self, options: nil)

        //Main content View
        self.addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    
    
    
    
    
    
}

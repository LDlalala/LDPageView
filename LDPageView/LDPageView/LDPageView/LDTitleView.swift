//
//  LDTitleView.swift
//  LDPageView
//
//  Created by 李丹 on 17/8/2.
//  Copyright © 2017年 LD. All rights reserved.
//

import UIKit

class LDTitleView: UIView {
    
    private var titles : [String]
    private var style : LDPageStyle

    init(titles : [String], frame : CGRect , style: LDPageStyle) {
        self.titles = titles
        self.style = style
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

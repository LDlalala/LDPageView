//
//  LDPageCollectionView.swift
//  自定义表情键盘
//
//  Created by 李丹 on 17/8/11.
//  Copyright © 2017年 LD. All rights reserved.
//

import UIKit

class LDPageCollectionView: UIView {

    
    fileprivate var titleView : LDTitleView!
    fileprivate var titles : [String]
    fileprivate var isTitleInTop : Bool
    fileprivate var layout : LDPageCollectionViewLayout
    
    init(frame: CGRect, titles: [String], isTitleInTop: Bool, layout: LDPageCollectionViewLayout) {
        self.titles = titles
        self.isTitleInTop = isTitleInTop
        self.layout = layout
        
        super.init(frame: frame)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

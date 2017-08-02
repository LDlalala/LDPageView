//
//  ViewController.swift
//  LDPageView
//
//  Created by 李丹 on 17/8/2.
//  Copyright © 2017年 LD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }

    private func setupUI(){
        //  let titles = ["推荐", "手游", "娱乐", "游戏", "趣玩"]
        let titles = ["推荐", "手游玩法大全", "娱乐手", "游戏游戏", "趣玩", "游戏游戏", "趣玩"]
        
        let style = LDPageStyle()
        style.titleHeight = 44
        
        let pageFrame = CGRect(x: 0, y: 64, width: view.bounds.width, height: view.bounds.height - 64)
        
        var childVcs : [UIViewController] = [UIViewController]()
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }
        
        let pageView = LDPageView(frame: pageFrame, titles: titles, style: style, childVcs: childVcs, parent: self)
        
        view.addSubview(pageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


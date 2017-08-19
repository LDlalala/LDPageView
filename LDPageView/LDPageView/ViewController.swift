//
//  ViewController.swift
//  LDPageView
//
//  Created by 李丹 on 17/8/2.
//  Copyright © 2017年 LD. All rights reserved.
//

import UIKit

private let EmoticonCellID : String = "EmoticonCellID"

class ViewController: UIViewController {

    private var pageCollectionView : LDPageCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        setupUI()
        
    }

    private func setupUI(){
        
        let frame = CGRect(x: 0, y: 200, width: view.bounds.width, height: 300)
        let titles = ["土豪","热门","专属","常见"]
        
        let layout = LDPageCollectionViewLayout()
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.row = 2
        layout.cols = 4
        layout.sectionInset = UIEdgeInsetsMake(0, 10, 0, 10)
        
        let style = LDPageStyle()
        style.normalColor = UIColor.black
        style.selectColor = UIColor.orange
        style.titleHeight = 44
        
        pageCollectionView = LDPageCollectionView(frame: frame, titles: titles, isTitleInTop: false, layout: layout, style: style)
        pageCollectionView.dataSource = self
        view.addSubview(pageCollectionView)
        // 注册cell
        pageCollectionView.register(cell: UICollectionViewCell.self, identifier: EmoticonCellID)
        
    }
    
    /*  类似网易新闻标题处理
    private func setupUI(){
       // let titles = ["推荐", "手游", "娱乐", "游戏", "趣玩"]
       let titles = ["推荐", "手游玩法大全", "娱乐手", "游戏游戏", "趣玩", "游戏游戏", "趣玩"]
        
        let style = LDPageStyle()
        style.titleHeight = 44
        style.isScrollEnadle = true
        
        let pageFrame = CGRect(x: 0, y: 64, width: view.bounds.width, height: view.bounds.height - 64)
        
        var childVcs : [UIViewController] = [UIViewController]()
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }
        
        let pageView = LDPageView(frame: pageFrame, titles: titles, style: style, childVcs: childVcs, parent: self)
        
        view.addSubview(pageView)
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


// MARK:- 数据源方法LDPageCollectionViewDataSource
extension ViewController : LDPageCollectionViewDataSource{
    
    func numberOfSections(in pageCollectionView: LDPageCollectionView) -> Int {
        return 4
    }
    func collectionView(_ pageCollectionView: LDPageCollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if section == 0 {
            return 20
        }else if section == 1{
            return 14
        }else if section == 2{
            return 9
        }else
        {
            return 30
        }
    }
    
    func collectionView(_ pageCollectionView: LDPageCollectionView, _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EmoticonCellID, for: indexPath)
        
        cell.backgroundColor = UIColor.randomColor()
        
        return cell
    }
}










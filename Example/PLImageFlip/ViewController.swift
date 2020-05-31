//
//  ViewController.swift
//  PLImageFlip
//
//  Created by 1248667206@qq.com on 05/31/2020.
//  Copyright (c) 2020 1248667206@qq.com. All rights reserved.
//

import UIKit
import PLImageFlip
import SnapKit

class ViewController: UIViewController {
    
    lazy var flipBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("点击我去看动画哈", for: .normal)
        btn.backgroundColor = .cyan
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(flipBtnClick), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(flipBtn)
        flipBtn.snp.makeConstraints { (make) in
            make.left.equalTo(40)
            make.right.equalTo(-40)
            make.top.equalTo(100)
            make.height.equalTo(60)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func flipBtnClick() {
        let vc = FlipImageViewController()
        let nav = UINavigationController.init(rootViewController: vc)
        self.present(nav, animated: true, completion: nil)
    }

}


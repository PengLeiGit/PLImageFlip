//
//  TransitionViewController.swift
//  Kingfisher
//
//  Created by 彭磊 on 2020/5/31.
//

import UIKit

class TransitionViewController: UIViewController {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.alpha = 1.0
        return view
    }()
    
    lazy var fromView: UIImageView = {
        let imagev = UIImageView()
        imagev.backgroundColor = .cyan
        return imagev
    }()
    
    lazy var toView: UIImageView = {
        let imageV = UIImageView()
        imageV.backgroundColor = .yellow
        return imageV
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(containerView)
        containerView.addSubview(fromView)
        containerView.snp.makeConstraints { (make) in
            make.left.equalTo(40)
            make.right.equalTo(-40)
            make.top.equalTo(100)
            make.bottom.equalTo(-100)
        }
        fromView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 80, height: UIScreen.main.bounds.height - 200)
        toView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 80, height: UIScreen.main.bounds.height - 200)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewTransform()
    }
    
    func viewTransform() {
        UIView.transition(from: fromView, to: toView, duration: 0.6, options: .transitionFlipFromRight) { (_) in
            
        }
    }

}

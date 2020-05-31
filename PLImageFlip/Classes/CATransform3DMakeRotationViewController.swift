//
//  CATransform3DMakeRotationViewController.swift
//  Kingfisher
//
//  Created by 彭磊 on 2020/5/31.
//

import UIKit

class CATransform3DMakeRotationViewController: UIViewController {
    
    @objc dynamic lazy var picImageView: UIImageView = {
        let imageV = UIImageView()
//        imageV.image = Bundle.jk_loadImage("1.jpg", from: "PLImageFlipBundle", in: "PLImageFilp")
        imageV.backgroundColor = .red
        return imageV
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(picImageView)
        picImageView.snp.makeConstraints { (make) in
            make.left.equalTo(40)
            make.right.equalTo(-40)
            make.top.equalTo(100)
            make.bottom.equalTo(-100)
//            make.edges.equalToSuperview()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewTransform()
    }
    
    func viewTransform() {
        UIView.animate(withDuration: 0.5, animations: {
            self.picImageView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi*0.5), 0, 1, 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5) {
                self.picImageView.layer.transform = CATransform3DMakeRotation(0, 0, 1, 0)
            }
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
//            self.picImageView.image = UIImage(named: "2.jpg")
            self.picImageView.backgroundColor = .green
        }
    }

}

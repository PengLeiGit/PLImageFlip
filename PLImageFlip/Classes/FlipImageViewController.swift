//
//  FlipImageViewController.swift
//  PLImageFlip
//
//  Created by 彭磊 on 2020/5/31.
//

import UIKit
import SnapKit
import Kingfisher

public class FlipImageViewController: UIViewController {
    
    lazy var listTable: UITableView = {
        let list = UITableView(frame: .zero, style: .grouped)
        list.backgroundColor = .white
        list.delegate = self
        list.dataSource = self
        list.register(UITableViewCell.self, forCellReuseIdentifier: "CellInder")
        return list
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(listTable)
        listTable.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

}

extension FlipImageViewController: UITableViewDelegate, UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellInder", for: indexPath)
        if indexPath.row == 0 {
            cell.textLabel?.text = "CATransform3DMakeRotation"
        }else {
            cell.textLabel?.text = "transition"
        }
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = CATransform3DMakeRotationViewController()
            self.navigationController?.pushViewController(vc, animated: true)
//            self.present(vc, animated: true, completion: nil)
        }else {
            let vc = TransitionViewController()
//            self.present(vc, animated: true, completion: nil)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

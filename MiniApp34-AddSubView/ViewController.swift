//
//  ViewController.swift
//  MiniApp34-AddSubView
//
//  Created by 前田航汰 on 2022/04/03.
//

import UIKit

class ViewController: UIViewController {

    private var subView: UIView?

    @IBAction func didTapAddButton(_ sender: Any) {
        if subView == nil {
            subView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
            subView?.backgroundColor = .darkGray

            /*
             // 更に文字を追加したい場合はさらにviewを重ねる
             let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
             label.text = "文字が入るよ"
             label.textColor = .white
            subView?.addSubview(label)
             */

            guard let subView = subView else {
                return
            }
            view.addSubview(subView)
        }
    }

    @IBAction func didTapRemoveButton(_ sender: Any) {
        subView?.removeFromSuperview()
        subView = nil
    }

}


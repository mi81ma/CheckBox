//
//  ViewController.swift
//  CheckBox
//
//  Created by masato on 4/3/2019.
//  Copyright © 2019 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        // (1) addSubview
        view.addSubview(checkBox)
    }


    // (2) lazy var
    lazy var checkBox : UIButton    = {

        // (3) Coordinate
        let checkBox = UIButton(frame: CGRect(x: view.frame.maxX / 2 - 100 / 2, y: view.frame.maxY / 2 - 100 / 2, width: 100, height: 100))

        checkBox.imageView?.sizeToFit()

        checkBox.setImage(UIImage.init(named: "iconCheckboxOutlined"), for: .normal)
        checkBox.setImage(UIImage.init(named: "iconCheckboxFilled"), for: .selected)
        checkBox.addTarget(self, action: #selector(self.toggleCheckboxSelection), for: .touchUpInside)

        return checkBox
    }()

    @objc func toggleCheckboxSelection() {
    checkBox.isSelected = !checkBox.isSelected
    }


}


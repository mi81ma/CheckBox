//
//  ViewController.swift
//  CheckBox
//
//  Created by masato on 4/3/2019.
//  Copyright © 2019 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var checkbox = UIButton.init(type: .custom)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        checkbox = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))

        checkbox.imageView?.sizeToFit()

        checkbox.setImage(UIImage.init(named: "iconCheckboxOutlined"), for: .normal)
        checkbox.setImage(UIImage.init(named: "iconCheckboxFilled"), for: .selected)
        checkbox.addTarget(self, action: #selector(self.toggleCheckboxSelection), for: .touchUpInside)

        view.addSubview(checkbox)
    }

    @objc func toggleCheckboxSelection() {
    checkbox.isSelected = !checkbox.isSelected
    }


}


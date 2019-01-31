//
//  Page2.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-31.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class Page2ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = UIColor.blue
		// label
		let labelInst = UILabel()
		self.view.addSubview(labelInst)
		labelInst.text = "Page 2"
		labelInst.translatesAutoresizingMaskIntoConstraints = false
		labelInst.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80).isActive = true
		labelInst.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20).isActive = true
	}
}

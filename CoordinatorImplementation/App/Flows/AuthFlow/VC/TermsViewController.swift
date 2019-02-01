//
//  TermsViewController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-01.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class TermsViewController: UIViewController, TermsView {
	var onTermsSwitchTap: (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBAction func termsConditionsSwitch(_ sender: Any) {
		self.onTermsSwitchTap?()
	}

}

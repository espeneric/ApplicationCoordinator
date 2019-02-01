//
//  LoginViewController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-01.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class LoginViewController: UIViewController, LoginView {

	var onLoginTap: (() -> Void)?
	var onSignUpTap: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

	@IBAction func loginTapped(_ sender: Any) {
		self.onLoginTap?()
	}

	@IBAction func signUpTapped(_ sender: Any) {
		self.onSignUpTap?()
	}

}

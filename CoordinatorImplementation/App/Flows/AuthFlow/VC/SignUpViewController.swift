//
//  SignUpViewController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-01.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class SignUpViewController: UIViewController, SignUpView {


	var onSignUpComplete: (() -> Void)?
	var onTermsTap: (() -> Void)?



	@IBOutlet weak var termsConditionsLabel: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
	}


	
	@IBAction func signUpTapped(_ sender: Any) {

	}

	@IBAction func termsConditionsTapped(_ sender: Any) {

	}

}

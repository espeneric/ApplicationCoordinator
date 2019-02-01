//
//  OnBoardingController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-26.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class OnBoardingController: UIViewController, OnboardingView {

	var onFinish: (() -> Void)?

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	@IBAction func finishTapped(_ sender: Any?) {
		onFinish?()
	}
}

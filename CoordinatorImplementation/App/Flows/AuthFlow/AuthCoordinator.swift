//
//  AuthCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-01.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class AuthCoordinator: BaseCoordinator, AuthCoordinatorOutput {

	var finishFlow: (() -> Void)?

	private let factory: AuthModuleFactory
	private let router: Router

	init(with factory: AuthModuleFactory, router: Router) {
		self.factory = factory
		self.router = router
	}

	override func start() {
		showLogin()
	}

	private func showLogin() {
		let loginOutput = factory.makeLoginModule()
		loginOutput.onLoginTap = { [weak self] in
			self?.finishFlow?()
		}
		loginOutput.onSignUpTap = { [weak self] in
			self?.showSignUp()
		}
		router.setRootModule(loginOutput)
	}

	private func showSignUp() {
		let signUpOutput = factory.makeSignUpModule()
		signUpOutput.onSignUpComplete = { [weak self] in
			self?.finishFlow?()
		}
		signUpOutput.onTermsTap = { [weak self] in
			self?.showTerms()
		}
		router.push(signUpOutput)
	}

	private func showTerms() {
		let termsOutput = factory.makeTermsModule()
		termsOutput.onTermsSwitchTap = { [weak self] in
			self?.showSignUp()
		}
		router.push(termsOutput)
	}
}

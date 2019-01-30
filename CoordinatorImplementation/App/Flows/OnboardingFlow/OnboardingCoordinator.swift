//
//  OnboardingCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class OnboardingCoordinator: BaseCoordinator, OnboardingCoordinatorOutput {

	var finishFlow: (() -> Void)?

	private let factory: OnboardingModuleFactory
	private let router: Router

	init(witch factory: OnboardingModuleFactory, router: Router) {
		self.factory = factory
		self.router = router
	}

	override func start() {
		showOnboarding()
	}

	func showOnboarding() {
		let onboardingModule = factory.makeOnboardingModule()
		onboardingModule.onFinish = { [weak self] in
			self?.finishFlow?()
		}
		router.setRootModule(onboardingModule.toPresent())
	}
}

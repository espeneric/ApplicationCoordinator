//
//  OnboardingCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class OnboardingCoordinator: BaseCoordinator, OnboardingCoordinatorOutput {

	var onFinishSteps: (() -> Void)?
	var finishFlow: (() -> Void)?

	private let factory: OnboardingModuleFactory
	private let router: Router

	init(with factory: OnboardingModuleFactory, router: Router) {
		self.factory = factory
		self.router = router
	}

	override func start() {
		showTutorial()
	}

	private func showTutorial() {
		let pageModule = factory.makeOnboardingStepsModule()
		pageModule.onFinishSteps = { [weak self] in
			self?.showFinalPage()
		}
		router.setRootModule(pageModule.toPresent(), hideBar: true)
	}

	private func showFinalPage() {
		let finalPage = factory.makeOnboardingModule()
		finalPage.onFinish = { [ weak self] in
			self?.finishFlow?()
		}
		router.setRootModule(finalPage.toPresent())
	}
}

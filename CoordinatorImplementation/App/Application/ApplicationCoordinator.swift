//
//  ApplicationCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

private var onboardingWasShown: Bool = false

final class ApplicationCoordinator: BaseCoordinator {
	private let coordinatorFactory: CoordinatorFactory
	private let router: Router

	init(coordinatorFactory: CoordinatorFactory, router: Router) {
		self.coordinatorFactory = coordinatorFactory
		self.router = router
	}

	override func start() {
		runOnboardingFlow()
	}

	private func runOnboardingFlow() {
		let coordinator = coordinatorFactory.makeOnboardingCoordinator(router: router)
		coordinator.finishFlow = { [weak self, weak coordinator] in
			onboardingWasShown = true
			self?.start()
			self?.removeDependency(coordinator)
		}
		addDependency(coordinator)
		coordinator.start()
	}
}

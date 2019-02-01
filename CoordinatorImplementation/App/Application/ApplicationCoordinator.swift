//
//  ApplicationCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

private var onboardingWasShown: Bool = false
private var isAuthorized: Bool = false

private enum LaunchInstructor {
	case auth, onboarding

	static func configure(tutorialWasShown: Bool = onboardingWasShown,
						  isAuthorized: Bool = isAuthorized) -> LaunchInstructor {
		switch (tutorialWasShown, isAuthorized) {
		case (true, false), (false, false): return .auth
		case (false, true): return .onboarding
		default: return .auth //should be changed to main.
		}

	}
}

final class ApplicationCoordinator: BaseCoordinator {

	private let coordinatorFactory: CoordinatorFactory
	private let router: Router

	private var instructor: LaunchInstructor {
		return LaunchInstructor.configure()
	}

	init(coordinatorFactory: CoordinatorFactory, router: Router) {
		self.coordinatorFactory = coordinatorFactory
		self.router = router
	}

	override func start() {
		switch instructor {
		case .auth: runLoginFlow()
		case .onboarding: runOnboardingFlow()
		}
	}

	private func runLoginFlow() {
		let coordinator = coordinatorFactory.makeAuthCoordinator(router: router)
		coordinator.finishFlow = { [weak self, weak coordinator] in
			isAuthorized = true
			self?.start()
			self?.removeDependency(coordinator)
		}
		addDependency(coordinator)
		coordinator.start()
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

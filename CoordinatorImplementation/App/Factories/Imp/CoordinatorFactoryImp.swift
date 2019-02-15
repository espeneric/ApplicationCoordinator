//
//  CoordinatorFactoryImp.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class CoordinatorFactoryImp: CoordinatorFactory {

	func makeOnboardingCoordinator(router: Router) -> Coordinator & OnboardingCoordinatorOutput {
		return OnboardingCoordinator(with: ModuleFactoryImp(), router: router)
	}

	func makeAuthCoordinator(router: Router) -> AuthCoordinatorOutput & Coordinator {
		return AuthCoordinator(with: ModuleFactoryImp(), router: router)
	}

	func makeTabBarCoordinator() -> (configurator: Coordinator, toPresent: UIPresentable?) {
		let controller = TabBarController.controllerFromStoryboard(.main)
		let coordinator = TabBarCoordinator(tabBarView: controller, coordinatorFactory: CoordinatorFactoryImp())
		return (coordinator, controller)
	}
	
}

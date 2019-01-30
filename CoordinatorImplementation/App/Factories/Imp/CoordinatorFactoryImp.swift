//
//  CoordinatorFactoryImp.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class CoordinatorFactoryImp: CoordinatorFactory {

//	func makeTabBarCoordinator() -> (configurator: Coordinator, toPresent: UIPresentable?) {
//		//TODO:
//	}

	func makeOnboardingCoordinator(router: Router) -> Coordinator & OnboardingCoordinatorOutput {
		return OnboardingCoordinator(witch: ModuleFactoryImp(), router: router)
	}
}

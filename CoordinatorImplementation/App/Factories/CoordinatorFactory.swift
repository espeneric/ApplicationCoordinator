//
//  CoordinatorFactory.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol CoordinatorFactory {

	/*
	coordinators should be created here.
    */
	func makeOnboardingCoordinator(router: Router) -> Coordinator & OnboardingCoordinatorOutput
	func makeAuthCoordinator(router: Router) -> Coordinator & AuthCoordinatorOutput
	func makeTabBarCoordinator() -> (configurator: Coordinator, toPresent: UIPresentable?)

}

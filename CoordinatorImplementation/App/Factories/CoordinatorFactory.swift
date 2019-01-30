//
//  CoordinatorFactory.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol CoordinatorFactory {

	//func makeTabBarCoordinator() -> (configurator: Coordinator, toPresent: UIPresentable?)
	/*
	coordinators should be created here.
    */
	func makeOnboardingCoordinator(router: Router) -> Coordinator & OnboardingCoordinatorOutput
}

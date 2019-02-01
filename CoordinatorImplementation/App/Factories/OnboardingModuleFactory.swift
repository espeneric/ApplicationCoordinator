//
//  OnboardingModuleFactory.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol OnboardingModuleFactory {
	func makeOnboardingModule() -> OnboardingView
	func makeOnboardingStepsModule() -> StepsView
}

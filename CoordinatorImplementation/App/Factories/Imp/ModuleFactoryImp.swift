//
//  ModuleFactoryImp.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class ModuleFactoryImp:
OnboardingModuleFactory {

	func makeOnboardingModule() -> OnBoardingView {
		return OnBoardingController.controllerFromStoryboard(.onboarding)
	}

	func makeOnboardingStepsModule() -> PageViewController {
		return PageViewController.controllerFromStoryboard(.onboarding)
	}

}

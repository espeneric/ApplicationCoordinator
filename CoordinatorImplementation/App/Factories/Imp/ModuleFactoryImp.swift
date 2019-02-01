//
//  ModuleFactoryImp.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class ModuleFactoryImp:
OnboardingModuleFactory, AuthModuleFactory {

	//Login
	func makeLoginModule() -> LoginView {
		return LoginViewController.controllerFromStoryboard(.auth)
	}

	func makeSignUpModule() -> SignUpView {
		return SignUpViewController.controllerFromStoryboard(.auth)
	}

	func makeTermsModule() -> TermsView {
		return TermsViewController.controllerFromStoryboard(.auth)
	}

	//Onboarding
	func makeOnboardingModule() -> OnboardingView {
		return OnBoardingController.controllerFromStoryboard(.onboarding)
	}

	func makeOnboardingStepsModule() -> StepsView {
		return PageViewController.controllerFromStoryboard(.onboarding)
	}

}

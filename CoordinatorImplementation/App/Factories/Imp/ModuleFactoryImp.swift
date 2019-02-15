//
//  ModuleFactoryImp.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class ModuleFactoryImp:
OnboardingModuleFactory, AuthModuleFactory, ItemModuleFactory {

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

	//Items
	func makeItemOutput() -> ItemCollectionView {
		return ItemCollectionViewController.controllerFromStoryboard(.items)
	}

	func makeItemDetailOutput(item: Item) -> ItemDetailView {

		let controller = ItemDetailController.controllerFromStoryboard(.items)
		///Dep Injection
		controller.item = item
		return controller
	}
}

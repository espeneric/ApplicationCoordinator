//
//  ModuleFactoryImp.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class ModuleFactoryImp:
OnboardingModuleFactory,
AuthModuleFactory,
ItemModuleFactory,
CreateItemModuleFactory,
SettingsModuleFactory {

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

	//Items view
	func makeItemModule() -> ItemCollectionView {
		return ItemCollectionViewController.controllerFromStoryboard(.items)
	}

	func makeItemDetailModule(item: Item) -> ItemDetailView {

		let controller = ItemDetailController.controllerFromStoryboard(.items)
		///Dep Injection
		controller.item = item
		return controller
	}

	//Create item view
	func makeItemCreateModule() -> CreateItemView {
		return CreateItemController.controllerFromStoryboard(.createItem)
	}

	//Create settings
	func makeSettingsModule() -> SettingsView {
		return SettingsViewController.controllerFromStoryboard(.settings)
	}

}

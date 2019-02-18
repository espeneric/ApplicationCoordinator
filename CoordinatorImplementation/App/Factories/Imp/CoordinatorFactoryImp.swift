//
//  CoordinatorFactoryImp.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class CoordinatorFactoryImp: CoordinatorFactory {

	///onboarding
	func makeOnboardingCoordinator(router: Router) -> Coordinator & OnboardingCoordinatorOutput {
		return OnboardingCoordinator(with: ModuleFactoryImp(), router: router)
	}

	///auth
	func makeAuthCoordinator(router: Router) -> AuthCoordinatorOutput & Coordinator {
		return AuthCoordinator(with: ModuleFactoryImp(), router: router)
	}

	///main tabBar
	func makeTabBarCoordinator() -> (configurator: Coordinator, toPresent: UIPresentable?) {
		let controller = TabBarController.controllerFromStoryboard(.main)
		let coordinator = TabBarCoordinator(tabBarView: controller, coordinatorFactory: CoordinatorFactoryImp())
		return (coordinator, controller)
	}

	///items
	func makeItemCoordinator() -> Coordinator {
		return makeItemCoordinator(navController: nil)
	}

	private func router(_ navController: UINavigationController?) -> Router {
		return RouterImp(rootController: navigationController(navController))
	}

	private func navigationController(_ navController: UINavigationController?) -> UINavigationController {
		if let navController = navController { return navController } else { return UINavigationController.controllerFromStoryboard(.main)}

	}

	func makeItemCoordinator(navController: UINavigationController?) -> Coordinator {
		let coordinator = ItemCoordinator(router: router(navController),
										  factory: ModuleFactoryImp(),
										  coordinatorFactory: CoordinatorFactoryImp()
		)
		return coordinator
	}

	///create item
	func makeItemCreationCoordinatorBox(navController: UINavigationController?) ->
		(configurator: Coordinator & CreateItemCoordinatorOutput, toPresent: UIPresentable?) {
			let router = self.router(navController)
			let coordinator = CreateItemCoordinator(factory: ModuleFactoryImp(), router: router)
			return (coordinator, router)
	}

	func makeItemCreationCoordinatorBox() ->
		(configurator: Coordinator & CreateItemCoordinatorOutput, toPresent: UIPresentable?) {
			return makeItemCreationCoordinatorBox(navController: navigationController(nil))
	}

}

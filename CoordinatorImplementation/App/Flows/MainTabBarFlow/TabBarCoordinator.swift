//
//  TabBarCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class TabBarCoordinator: BaseCoordinator {

	private let tabBarView: TabBarView
	private let coordinatorFactory: CoordinatorFactory

	init(tabBarView: TabBarView, coordinatorFactory: CoordinatorFactory ) {
		self.tabBarView = tabBarView
		self.coordinatorFactory = coordinatorFactory
	}

	override func start() {
		print("Item started")
		tabBarView.onViewDidLoad = runItemFlow()
		tabBarView.onItemFlowSelect = runItemFlow()
		//		tabBarView.onSettingsFlowSelect = runSettingsFlow()
	}

	private func runItemFlow() -> ((UINavigationController) -> Void) {
		return { [unowned self] navController in
			if navController.viewControllers.isEmpty {
				let itemCoordinator = self.coordinatorFactory.makeItemCoordinator(navController: navController)
				self.addDependency(itemCoordinator)
				itemCoordinator.start()
			}
		}
	}

	//TODO:

//	private func runSettingsFlow() -> ((UINavigationController) -> ()) {
//		return { [unowned self] navController in
//			if navController.viewControllers.isEmpty {
//				//make settings coordinator
//				//add dependency
//				//start coordinator
//			}
//		}
//	}
}

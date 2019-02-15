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

	init(tabBarView: TabBarView, coordinatorFactory: CoordinatorFactory ){
		self.tabBarView = tabBarView
		self.coordinatorFactory = coordinatorFactory
	}

	override func start() {
		tabBarView.onViewDidLoad = runItemFlow()
		tabBarView.onItemFlowSelect = runItemFlow()
//		tabBarView.onSettingsFlowSelect = runSettingsFlow()
		print("Main Flow Started.")
	}


	private func runItemFlow() -> ((UINavigationController) -> ()) {
		return { [unowned self ] navController in
			if navController.viewControllers.isEmpty {
				//make item coordinator
				//add dependency
				//start coordinator
			}

		}
	}


//	private func runSettingsFlow() -> ((UINavigationController) -> ()) {}




}

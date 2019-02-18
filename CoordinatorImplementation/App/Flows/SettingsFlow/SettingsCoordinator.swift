//
//  SettingsCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-18.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class SettingsCoordinator: BaseCoordinator {

	private let factory: SettingsModuleFactory
	private let router: Router

	init(router: Router, factory: SettingsModuleFactory) {
		self.router = router
		self.factory = factory
	}

	override func start() {
		showSettings()
	}

	private func showSettings() {
		let settingsFlow = factory.makeSettingsModule()
		router.setRootModule(settingsFlow)
	}

}

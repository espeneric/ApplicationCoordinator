//
//  CreateItemCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-18.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class CreateItemCoordinator: BaseCoordinator, CreateItemCoordinatorOutput {

	var finishFlow: ((Item?) -> Void)?

	private let factory: CreateItemModuleFactory
	private let router: Router

	init(factory: CreateItemModuleFactory, router: Router) {
		self.factory = factory
		self.router = router
	}

	override func start() {
		showCreate()
	}

	private func showCreate() {
		let createItem = factory.makeItemCreateModule()
		createItem.onCompleteCreateItem = { [weak self] item in
			self?.finishFlow?(item)
		}
		createItem.onHideButtonTap = { [weak self ] in
			self?.finishFlow?(nil)
		}
		router.setRootModule(createItem)
	}

}

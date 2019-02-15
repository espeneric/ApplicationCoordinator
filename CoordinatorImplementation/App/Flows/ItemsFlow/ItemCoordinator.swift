//
//  ItemCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class ItemCoordinator: BaseCoordinator {

	private let factory: ItemModuleFactory
	private let coordinatorFactory: CoordinatorFactory
	private let router: Router

	init(router: Router, factory: ItemModuleFactory, coordinatorFactory: CoordinatorFactory) {
		self.factory = factory
		self.router = router
		self.coordinatorFactory = coordinatorFactory
	}

	override func start() {
		print("Items started")
	}

}

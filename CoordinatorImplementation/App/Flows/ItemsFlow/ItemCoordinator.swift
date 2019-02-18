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
		showItemList()
	}

	private func showItemList() {
		let itemsOutput = factory.makeItemModule()

		itemsOutput.onItemSelect = { [weak self] (item) in
			self?.showItemDetail(item)
		}
		itemsOutput.onCreateItem = { [weak self ] in
			self?.runCreationFlow()
		}
		router.setRootModule(itemsOutput)

	}

	//DI
	private func showItemDetail(_ item: Item) {
		let itemDetail = factory.makeItemDetailModule(item: item)
		router.push(itemDetail, hideBottomBar: true)
	}

	// MARK: Switch to another flow:
	private func runCreationFlow() {

		let (coordinator, module) = coordinatorFactory.makeItemCreationCoordinatorBox()
		coordinator.finishFlow = { [weak self, weak coordinator] item in
			self?.router.dismissModule()
			self?.removeDependency(coordinator)
			if let item = item {
				self?.showItemDetail(item)
			}
		}
		self.addDependency(coordinator)
		router.present(module)
		coordinator.start()
	}

}

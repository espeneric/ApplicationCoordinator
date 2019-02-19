//
//  BaseCoordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class BaseCoordinator: Coordinator {

	var childCoordinator: [Coordinator] = []

	func start() {
		start(with: nil)
	}

	func start(with option: DeepLink?) { }

	///add only unique coordinator object
	func addDependency(_ coordinator: Coordinator) {
		guard !childCoordinator.contains(where: { $0 === coordinator }) else { return }
		childCoordinator.append(coordinator)
	}

	///remove unique coordinator object
	func removeDependency(_ coordinator: Coordinator?) {
		guard
			childCoordinator.isEmpty == false,
			let coordinator = coordinator else { return }
		 ///clear child-coordinators recursively
		if let coordinator = coordinator as? BaseCoordinator, !coordinator.childCoordinator.isEmpty {
			coordinator.childCoordinator
				.filter({$0 !== coordinator})
				.forEach({coordinator.removeDependency($0)})
		}
		for (index, element) in childCoordinator.enumerated() where element === coordinator {
			childCoordinator.remove(at: index)
			break
		}
	}

}

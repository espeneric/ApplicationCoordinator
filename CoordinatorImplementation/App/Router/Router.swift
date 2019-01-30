//
//  Router.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol Router: UIPresentable {
	func present(_ module: UIPresentable?)
	func present(_ module: UIPresentable?, animated: Bool)

	func push(_ module: UIPresentable?)
	func push(_ module: UIPresentable?, hideBottomBar: Bool)
	func push(_ module: UIPresentable?, animated: Bool)
	func push(_ module: UIPresentable?, animated: Bool, completion: (() -> Void)?)
	func push(_ module: UIPresentable?, animated: Bool, hideBottomBar: Bool, completion: (() -> Void)?)

	func popModule()
	func popModule(animated: Bool)

	func dismissModule()
	func dismissModule(animated: Bool, completion: (() -> Void)?)

	func setRootModule(_ module: UIPresentable?)
	func setRootModule(_ module: UIPresentable?, hideBar: Bool)

	func popToRootModule(animated: Bool)
}

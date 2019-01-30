//
//  Presentable.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-26.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol UIPresentable {
	func toPresent() -> UIViewController?
}

extension UIViewController: UIPresentable {
	func toPresent() -> UIViewController? {
		return self
	}
}

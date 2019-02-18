//
//  TabBarController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class TabBarController: UITabBarController, UITabBarControllerDelegate, TabBarView {

	var onItemFlowSelect: ((UINavigationController) -> Void)?
	var onSettingsFlowSelect: ((UINavigationController) -> Void)?
	var onViewDidLoad: ((UINavigationController) -> Void)?

	override func viewDidLoad() {
		super.viewDidLoad()

		delegate = self

		if let controller = customizableViewControllers?.first as? UINavigationController {
			onViewDidLoad?(controller)
		}
	}

	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {

		///tab bar controllers as UINavigationControllers were set up in Main.storyboard
		guard let controller = viewControllers?[selectedIndex] as? UINavigationController else { return }
		switch selectedIndex {
		case 0:
			onItemFlowSelect?(controller)
		case 1:
			onSettingsFlowSelect?(controller)
		default:
			print("Flow not implemented yet")
		}
	}
}

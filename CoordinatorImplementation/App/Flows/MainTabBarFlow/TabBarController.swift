//
//  TabBarController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class TabBarController: UITabBarController, UITabBarControllerDelegate, TabBarView {

	
	var onItemFlowSelect: ((UINavigationController) -> ())?
	var onSettingsFlowSelect: ((UINavigationController) -> ())?
	var onViewDidLoad: ((UINavigationController) -> ())?

	override func viewDidLoad() {
		super.viewDidLoad()

		delegate = self

		if let vc = customizableViewControllers?.first as? UINavigationController {
			onViewDidLoad?(vc)
		}
	}

	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
		guard let vc = viewControllers?[selectedIndex] as? UINavigationController else { return }

		switch selectedIndex {
		case 1:
			onItemFlowSelect?(vc)
		case 2:
			onSettingsFlowSelect?(vc)
		default:
			print("Flow not implemented yet")
			break;
		}
	}
}

//
//  TabBarView.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//


protocol TabBarView: class {
	var onItemFlowSelect: ((UINavigationController) -> ())? { get set }
	var onSettingsFlowSelect: ((UINavigationController) -> ())? { get set }
	var onViewDidLoad: ((UINavigationController) -> ())? { get set }
}

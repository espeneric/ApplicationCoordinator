//
//  StepsView.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-01.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol StepsView: BaseView {
	var onFinishSteps: (() -> Void)? { get set }
}


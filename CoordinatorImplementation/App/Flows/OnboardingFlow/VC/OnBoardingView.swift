//
//  OnBoardingView.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-26.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol OnBoardingView: BaseView {
	var onFinish: (() -> Void)? { get set }
}
protocol OnFinishStepsView: BaseView {
	var onFinishSteps: (() -> Void)? { get set }
}

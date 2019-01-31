//
//  OnboardingCoordinatorOutput.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-29.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol OnboardingCoordinatorOutput: class {
	var onFinishSteps: (() -> Void)? { get set }
	var finishFlow: (() -> Void)? { get set }
}

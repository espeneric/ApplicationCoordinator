//
//  CreateItemCoordinatorOutput.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-18.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol CreateItemCoordinatorOutput: class {
	var finishFlow: ((Item?) -> Void)? { get set }
}

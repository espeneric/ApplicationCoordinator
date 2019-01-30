//
//  CoordinatorOutput.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-26.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

import Foundation
protocol CoordinatorOutput {
	var finishFlow: (Item -> Void)? { get set }
}

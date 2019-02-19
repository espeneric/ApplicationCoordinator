//
//  Coordinator.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-26.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol Coordinator: class {
	func start()
	func start(with option: DeepLink?) //add deeplinking option
}

/*
What do we need for Coordinators to work?
Router       for navigation (router just routes! And it’s passive in our case).
Modules      factory, for creating modules and injecting all dependencies.
Coordinators factory (optional), in case we need to switch to a different flow.
Storage      (optional), only if we store any data and inject it into the modules
*/

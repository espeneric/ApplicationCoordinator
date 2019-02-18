//
//  Item.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

struct Item {
	let image: UIImage?
	let name: String

	init(image: UIImage?, name: String) {
		self.image = image
		self.name = name
	}
}

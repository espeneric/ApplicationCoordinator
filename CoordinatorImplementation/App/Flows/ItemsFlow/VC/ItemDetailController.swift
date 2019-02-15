//
//  ItemDetailController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class ItemDetailController: UIViewController, ItemDetailView {
	//controller handler

	var item: Item?

	override func viewDidLoad() {
		super.viewDidLoad()
		title = item?.name ?? "Image Name"
	}
}

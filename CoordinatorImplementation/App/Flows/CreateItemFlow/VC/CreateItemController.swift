//
//  CreateItemController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-18.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class CreateItemController: UIViewController, CreateItemView {

	var onHideButtonTap: (() -> Void)?
	var onCompleteCreateItem: ((Item) -> Void)?

	override func viewDidLoad() {
		super.viewDidLoad()
		title = "Create"

		navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Hide",
														   style: .plain,
														   target: self,
														   action: #selector(CreateItemController.hideButtonClicked(_:)))
	}

	@IBAction func hideButtonClicked(_ sender: UIBarButtonItem) {
		onHideButtonTap?()
	}

	@IBAction func createButtonClicked(_ sender: UIButton) {
		onCompleteCreateItem?(Item(image: nil, name: "New Item"))
	}

}

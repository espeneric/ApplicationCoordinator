//
//  ItemCollectionViewController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

final class ItemCollectionViewController: UIViewController, ItemCollectionView {

	//controller handler
	var onItemSelect: ((Item) -> Void)?
	var onCreateItem: (() -> Void)?

	@IBOutlet weak var collectionView: UICollectionView!
	@IBAction func addItemButtonClicked(_ sender: UIBarButtonItem) { onCreateItem?() }

	override func viewDidLoad() {
		super.viewDidLoad()

		title = "Items"

		navigationItem.rightBarButtonItem = UIBarButtonItem(
			barButtonSystemItem: .add,
			target: self,
			action: #selector(self.addItemButtonClicked(_:))
		)
	}

	//mock data
	var items = (0...5).map { index in return Item(image: nil, name: "Item: \(index)")}
}

extension ItemCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {

	//	func numberOfSections(in collectionView: UICollectionView) -> Int {
	//		return 1
	//	}

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return items.count
	}

	//TODO: Add data.
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath)
		let item = items[indexPath.row]
		cell.backgroundColor = UIColor.gray
		return cell
	}

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		onItemSelect?(items[indexPath.row])
		collectionView.deselectItem(at: indexPath, animated: true)
	}
}

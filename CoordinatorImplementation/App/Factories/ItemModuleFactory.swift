//
//  ItemModuleFactory.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol ItemModuleFactory {
	func makeItemOutput() -> ItemCollectionView
	func makeItemDetailOutput(item: Item) -> ItemDetailView
}

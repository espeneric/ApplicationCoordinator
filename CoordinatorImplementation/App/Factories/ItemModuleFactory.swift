//
//  ItemModuleFactory.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol ItemModuleFactory {
	func makeItemModule() -> ItemCollectionView
	func makeItemDetailModule(item: Item) -> ItemDetailView
}

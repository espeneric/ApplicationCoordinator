//
//  ItemCollectionView.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-15.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//
protocol ItemCollectionView: BaseView {
	var onItemSelect: ((Item) -> Void)? { get set }
	var onCreateItem: (() -> Void)? { get set }
}

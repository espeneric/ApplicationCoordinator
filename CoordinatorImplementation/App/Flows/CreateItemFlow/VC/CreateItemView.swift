//
//  CreateItemView.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-18.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

protocol CreateItemView: BaseView {
	var onHideButtonTap: (() -> Void)? { get set}
	var onCompleteCreateItem: ((Item) -> Void)? { get set }
}

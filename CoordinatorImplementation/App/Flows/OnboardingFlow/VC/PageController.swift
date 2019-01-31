//
//  PageController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-01-30.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

class PageViewController: UIPageViewController,
	UIPageViewControllerDataSource,
	UIPageViewControllerDelegate,
OnFinishStepsView {

	var onFinishSteps: (() -> Void)?

	var pages = [UIViewController]()
	let pageControl = UIPageControl()

	override func viewDidLoad() {
		self.dataSource = self
		self.delegate = self
		let initialPage = 0

		let page1 = Page1ViewController()
		let page2 = Page2ViewController()
		let page3 = Page3ViewController()

		//add the individual viewControllers to the pageViewController
		self.pages.append(page1)
		self.pages.append(page2)
		self.pages.append(page3)
		setViewControllers([pages[initialPage]], direction: .forward, animated: false, completion: nil)

		// pageControl
		self.pageControl.frame = CGRect()
		self.pageControl.currentPageIndicatorTintColor = UIColor.black
		self.pageControl.pageIndicatorTintColor = UIColor.lightGray
		self.pageControl.numberOfPages = self.pages.count
		self.pageControl.currentPage = initialPage
		self.view.addSubview(self.pageControl)

		self.pageControl.translatesAutoresizingMaskIntoConstraints = false
		self.pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20).isActive = true
		self.pageControl.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -20).isActive = true
		self.pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
		self.pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
	}
}

extension PageViewController {
	func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

		if let vcIndex = self.pages.index(of: viewController) {
			switch vcIndex {
			case (0):
				return self.pages[0]
			case (1):
				return self.pages[vcIndex - 1]
			default:
				self.onFinishSteps?()
			}
		}
		return nil
	}

	func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

		if let vcIndex = self.pages.index(of: viewController) {
			switch vcIndex {
			case (0...1):
				return self.pages[vcIndex + 1]
			default:
				self.onFinishSteps?()
			}
		}
		return nil
	}

	func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {

		// set the pageControl.currentPage to the index of the current viewController in pages
		if let viewControllers = pageViewController.viewControllers {
			if let viewControllerIndex = self.pages.index(of: viewControllers[0]) {
				self.pageControl.currentPage = viewControllerIndex
			}
		}
	}
}

extension UIView {

	private class func viewInNibNamed<T: UIView>(_ nibNamed: String) -> T {

		guard let view = Bundle.main.loadNibNamed(nibNamed, owner: nil, options: nil)?.first as? T
			else {fatalError("No view in nib, check spelling")}
		return view
	}

	class func nib() -> Self {
		return viewInNibNamed(nameOfClass)
	}

	class func nib(_ frame: CGRect) -> Self {
		let view = nib()
		view.frame = frame
		view.layoutIfNeeded()
		return view
	}
}

//
//  SettingsViewController.swift
//  CoordinatorImplementation
//
//  Created by Andrian Sergheev on 2019-02-18.
//  Copyright © 2019 Andrian Sergheev. All rights reserved.
//

struct Setting {
	let title: String
	let subtitle: String
}

class SettingsViewController: UIViewController, SettingsView {

	@IBOutlet weak var tableView: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()

		tableView.dataSource = self
		tableView.delegate = self

		title = "Settings"
		mockData()
	}

	var settings: [[Setting]] = [[]]

	private func mockData() {
		let settings1 = (0...3).map { index in return Setting(title: "Setting № \(index)", subtitle: "Setting descripton") }
		let settings2 = (0...5).map { index in return Setting(title: "Setting № \(index)", subtitle: "Setting descripton") }
		settings.append(settings1)
		settings.append(settings2)
	}

}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {

	func numberOfSections(in tableView: UITableView) -> Int {
		return settings.count
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return settings[section].count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath)

		let setting = settings[indexPath.section][indexPath.row]
		cell.textLabel?.text = setting.title
		cell.detailTextLabel?.text = setting.subtitle
		return cell
	}
}

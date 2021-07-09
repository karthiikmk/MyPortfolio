//
//  InstrumentsViewController.swift
//  MyPortfolio
//
//  Created by Karthik on 09/07/21.
//

import UIKit

class InstrumentsViewController: UIViewController {

	@IBOutlet weak var instrumentsTableView: UITableView! {
		didSet {
			instrumentsTableView.delegate = self
			instrumentsTableView.dataSource = self
			instrumentsTableView.tableFooterView = .init()
			let cellNib = UINib(nibName: "InstrumentCell", bundle: .main)
			instrumentsTableView.register(cellNib, forCellReuseIdentifier: "InstrumentCell")
		}
	}
	lazy var viewModel: InstrumentViewModel = {
		InstrumentViewModel()
	}()

    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = "My Portfolio"
    }
}

// MARK: UITableViewDataSource
extension InstrumentsViewController: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return viewModel.instruments.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "InstrumentCell") as! InstrumentCell
		cell.instrument = viewModel.instruments[indexPath.row]
		cell.configure()
		return cell
	}
}

// MARK: UITableViewDelegate
extension InstrumentsViewController: UITableViewDelegate {

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		viewModel.didSelectRow(at: indexPath)
	}
}

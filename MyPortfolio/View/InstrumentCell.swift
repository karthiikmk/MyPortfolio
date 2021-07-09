//
//  InstrumentCell.swift
//  MyPortfolio
//
//  Created by Karthik on 09/07/21.
//

import UIKit

class InstrumentCell: UITableViewCell {

	@IBOutlet weak var title: UILabel!
	@IBOutlet weak var subtitle: UILabel!

	var instrument: Instrument!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

	func configure() {
		self.title.text = instrument.name
		self.subtitle.text = instrument.description
	}
}

//
//  InstrumentViewModel.swift
//  MyPortfolio
//
//  Created by Karthik on 09/07/21.
//

import Foundation

class InstrumentViewModel {

	typealias Instruments = [Instrument]
	lazy var instruments: Instruments = {
		return [
			Instrument(name: "Stocks", description: "Invested amount: 100"),
			Instrument(name: "Mutual Funds", description: "Invested amount: $500"),
			Instrument(name: "Gold", description: "Having 3g of gold"),
			Instrument(name: "Crypto", description: "0.123 of BTC"),
			Instrument(name: "EPF", description: "Current Balance: 2L"),
			Instrument(name: "EmergencyFund", description: "Covered 3L"),
			Instrument(name: "Savings Account", description: "Current Balance: 200$")
		]
	}()

	func didSelectRow(at indexPath: IndexPath) {
		
	}
}

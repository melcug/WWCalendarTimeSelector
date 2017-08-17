//
//  Array+Shift.swift
//  Pods
//
//  Created by Ilya Kolomeitsev on 17/08/2017.
//
//

import Foundation

extension Array {

	func shiftedLeft(by rawOffset: Int = 1) -> [Element] {
		let clampedAmount = rawOffset % count
		let offset = clampedAmount < 0 ? count + clampedAmount : clampedAmount
		return Array(self[offset ..< count] + self[0 ..< offset])
	}

	func shiftedRight(by rawOffset: Int = 1) -> [Element] {
		return self.shiftedLeft(by: -rawOffset)
	}

	mutating func shiftLeft(by rawOffset: Int = 1) {
		self = self.shiftedLeft(by: rawOffset)
	}

	mutating func shiftRight(by rawOffset: Int = 1) {
		self = self.shiftedRight(by: rawOffset)
	}
}

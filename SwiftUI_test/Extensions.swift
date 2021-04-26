//
//  Extensions.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 26.04.2021.
//

extension String {
    var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9-\\s]", options: .regularExpression) == nil
    }
}

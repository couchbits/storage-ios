//
//  StorageConstraint.swift
//  Storage
//
//  Created by Dominik Gauggel on 18/12/19.
//  Copyright © 2019 couchbits GmbH. All rights reserved.
//

import Foundation

public struct StorageConstraint: Equatable {
    public var attribute: StorageType.Attribute
    public var value: StorableType?
    public var constraintOperator: ConstraintOperator

    public init(attribute: StorageType.Attribute, value: StorableType?, constraintOperator: ConstraintOperator = .equal) {
        self.attribute = attribute
        self.value = value
        self.constraintOperator = constraintOperator
    }

    public static func == (lhs: StorageConstraint, rhs: StorageConstraint) -> Bool {
        return lhs.attribute == rhs.attribute
    }

    public enum ConstraintOperator {
        case equal
        case greaterThan
        case greaterThanOrEqual
        case lessThan
        case lessThanOrEqual
    }
}

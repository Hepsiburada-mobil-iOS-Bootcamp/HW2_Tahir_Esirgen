//
//  GenericValueProtocol.swift
//  PermissionProject
//
//  Created by Tahir Esirgen on 27.09.2021.
//

import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}

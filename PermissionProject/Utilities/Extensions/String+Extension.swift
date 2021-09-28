//
//  String+Extension.swift
//  PermissionProject
//
//  Created by Tahir Esirgen on 27.09.2021.
//

import Foundation

extension String {
    
    func toLocalize() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
}

//
//  PermissionViewFactory.swift
//  PermissionProject
//
//  Created by Tahir Esirgen on 27.09.2021.
//

import Foundation

class PermissionViewFactory {
    
    class func getManager(with type: PermissionType) -> PermissionManagerProtocol {
        switch type {
        case .camera:
            return CameraPermisionManager()
        case .photos:
            return PhotosPermissionManager()
        }
    }
    
}


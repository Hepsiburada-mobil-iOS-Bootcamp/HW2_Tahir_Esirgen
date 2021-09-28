//
//  ActionButtonData.swift
//  PermissionProject
//
//  Created by Tahir Esirgen on 27.09.2021.
//

import UIKit

typealias VoidCompletionBlock = () ->Void

class ActionButtonData  {
    
    private(set) var text: String //Sadece get Edilebilir.
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: VoidCompletionBlock?
    
    init(text:String,buttonType:ActionButtonType) {
        self.text=text
        self.buttonType = buttonType
    }
    
    func setActionButtonListener(by value:VoidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
}

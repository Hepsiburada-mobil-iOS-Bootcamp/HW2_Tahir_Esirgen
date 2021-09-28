//
//  ViewController.swift
//  PermissionProject
//
//  Created by Tahir Esirgen on 27.09.2021.
//

import UIKit

typealias BooleanCompletionBlock = (Bool) -> Void

class ViewController: UIViewController {

    
    @IBAction func cameraButtonTapped(_ sender: Any) {
        print("Camera Tapped")
        present(PermissionViewBuilder.build(with: .camera), animated: true, completion: nil)
    }
    
    @IBAction func phoneButtonTapped(_ sender: Any) {
        print("Photos Tapped")
        present(PermissionViewBuilder.build(with: .photos), animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


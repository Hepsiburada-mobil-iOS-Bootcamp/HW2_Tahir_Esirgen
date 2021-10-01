//
//  ViewController.swift
//  PermissionProject
//
//  Created by Tahir Esirgen on 27.09.2021.
//

import UIKit

typealias BooleanCompletionBlock = (Bool) -> Void



class ViewController: UIViewController {
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addImage()
        addActionButton()
        
    }
    
    lazy var cameraActionButton: VoidCompletionBlock = {
        print("Camera Tapped")
        self.present(PermissionViewBuilder.build(with: .camera), animated: true, completion: nil)
    }
    
    lazy var photosActionButton: VoidCompletionBlock = {
        print("Photos Tapped")
        self.present(PermissionViewBuilder.build(with: .photos), animated: true, completion: nil)
    }
    
    private func addImage(){
        let imageName = "bjk.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 414, height: 896)
        self.view.addSubview(imageView)
    }
    
    private func addActionButton() {
        let cameraButton = ActionButton(frame: .zero, data: ActionButtonData(text: "Camera", buttonType: .filled(.smooth)).setActionButtonListener(by: self.cameraActionButton))
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cameraButton)
        
        NSLayoutConstraint.activate([
            
            cameraButton.heightAnchor.constraint(equalToConstant: 50),
            cameraButton.widthAnchor.constraint(equalToConstant: 140),
            
            cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: -120),
            cameraButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
            
        ])
        
        let photosButton = ActionButton(frame: .zero, data: ActionButtonData(text: "Photos", buttonType: .filled(.bright)).setActionButtonListener(by: photosActionButton))
        photosButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(photosButton)
        
        NSLayoutConstraint.activate([
        
            photosButton.heightAnchor.constraint(equalToConstant: 50),
            photosButton.widthAnchor.constraint(equalToConstant: 140),
            
            photosButton.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 120),
            photosButton.topAnchor.constraint(equalTo: view.topAnchor,constant: 50)
            
        ])
        
        
        
    }
    
}


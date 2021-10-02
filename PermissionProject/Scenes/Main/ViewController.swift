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
        guard let image = UIImage(named: imageName) else{ return }
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        
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


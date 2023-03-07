//
//  WelcomeViewController.swift
//  Music Clone
//
//  Created by Dimuth Bandara on 2023-03-06.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign in with spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome Screen "
        view.backgroundColor = .systemGreen
        
        // adding sign in button options
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
//        signInButton.frame = CGRect(x: 20, y: 1, width: 200, height: 50)
        signInButton.frame = CGRect(x: 20, y: view.height-70, width: view.width-40, height: 50)
        
    }
    
    @objc func didTapSignIn(){
        let vc = AuthViewController()
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

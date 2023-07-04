//
//  LoginController.swift
//  LoginPageViewCode
//
//  Created by Matheus Sousa on 03/07/23.
//

import UIKit

class LoginController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        self.screen = LoginScreen()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

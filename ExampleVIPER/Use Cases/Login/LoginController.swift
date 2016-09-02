//
//  ViewController.swift
//  ExampleVIPER
//
//  Created by Zachary Snell on 9/2/16.
//  Copyright © 2016 Zachary Snell. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButtonTapped(_ sender: AnyObject) {
        presenter?.login()
    }
    
    // MARK: Variables
    
    var presenter: LoginPresenterInvokable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LoginController : LoginViewInvokable, LoginPresenterObserver {
    
    func setPresenter ( _ loginPresenter: LoginPresenterInvokable ) {
        self.presenter = loginPresenter
        self.presenter!.observer = self
    }
    
    func login(success: Bool) {
        if success {
            loginButton.setTitle("Logged in", for: .normal)
        }
    }
}


import UIKit

class LoginWireframe: LoginWireframeInvokable {

    let navController: UINavigationController
    let storyboardId = "Login"
    let controllerId = "LoginViewController"
    
    init(navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func present() {
        let storyboard: UIStoryboard = UIStoryboard.init(name: storyboardId, bundle: nil)
        let viewController: UIViewController = storyboard.instantiateViewController(withIdentifier: controllerId)
        
        let presenter = LoginPresenter(wireframe: self)
        
        guard let loginController = viewController as? LoginViewInvokable else { preconditionFailure("Wrong controller provided for login") }
        loginController.setPresenter(presenter)
        
        navController.setViewControllers([viewController], animated: false)
    }
}

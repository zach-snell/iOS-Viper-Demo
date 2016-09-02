class LoginPresenter : LoginPresenterInvokable {
    
    let wireframe: LoginWireframeInvokable
    weak var observer: LoginPresenterObserver?
    
    func login() {
        observer?.login(success: true)
    }
    
    init(wireframe: LoginWireframeInvokable) {
        self.wireframe = wireframe
    }
}

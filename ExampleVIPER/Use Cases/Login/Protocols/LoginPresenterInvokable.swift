protocol LoginPresenterInvokable {
    
    var observer: LoginPresenterObserver? { get set }
    
    func login()
}

import Foundation
import UIKit

protocol ViewInterface: UIViewController {
}

extension ViewInterface{
    func showAlert(title: String, description: String){
        DispatchQueue.main.async {
            self.showAlert(title: title, description: description)
        }
    }
    
    func showLoading() {
        DispatchQueue.main.async {
            self.showLoadingView()
        }
    }
    
    func hideLoading() {
        DispatchQueue.main.async {
            self.hideLoadingView()
        }
    }
    
    func inform(title: String, description: String) {
        DispatchQueue.main.async {
            self.showAlert(title: title, description: description)
        }
    }
    
    func inform(title: String, description: String, closeText: String, onClose: @escaping () -> ()) {
        DispatchQueue.main.async {
            self.showAlert(title: title, description: description, closeText: closeText, callback: onClose)
        }
    }
}

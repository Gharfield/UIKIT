//
//  AlertManager.swift
//  UIKitM8
//
//  Created by Gustaf Hallberg on 2024-05-19.
//

import UIKit

class AlertManager {
    
    private static func showBasicAlert(on vc: UIViewController, title: String, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}

// MARK: - Show Validation Alerts
extension AlertManager{
    
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Ogiltig emailadress", message: "Var god ange en giltig emailadress.")
    }
    
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Fel Lösenord", message: "Försök igen")
        
    }
    
    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Fel användarnamn", message: "Var god ange ett giltigt användarnamn.")
    }
}


// MARK: - Registration Errors
extension AlertManager{
    
    
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Försök igen", message: nil)
    }
    
    public static func showRegistrationErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Försök igen", message: "\(error.localizedDescription)")
    }
}

// MARK: - Log In Errors
extension AlertManager{
    
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Något tokigt hände under inloggning, försök igen", message: nil)
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Något tokigt hände under inloggning, försök igen", message: "\(error.localizedDescription)")
    }
}

// MARK: - Log Out Error

extension AlertManager{
    
    public static func showLogoutErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Något tokigt hände under utloggning, försök igen", message: "\(error.localizedDescription)")
    }
}

// MARK: - Forgot Password
extension AlertManager{
    
    public static func showPasswordResetSent(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "En mail gällande återställning har skickats till din mail", message: nil)
    }
    
    public static func showErrorSendingPasswordAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Kunde ej skicka återställning av lösenord, försök igen", message: "\(error.localizedDescription)")
    }
}

// MARK: - Fetching Users Errors
extension AlertManager{
    
    public static func showFetchingUserError(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, title: "Något gick fel vid hämtning av användare", message: "\(error.localizedDescription)")
    }
    
    
    public static func showUnkownFetchingUserError(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Ett okänt fel hände under hämtning av profil", message: nil)
    }
}

//
//  FormInteractor.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 13/04/21.
//

import UIKit

// PROTOCOL
protocol FormBusinessLogic {
    func updateFields()
    func allFieldsAreValid(name: String, email: String, tel: String) -> Bool
}

class FormInteractor: FormBusinessLogic {
    
    // CREATE VAR
    var presenter: FormPresentationLogic?
    var worker = FormWorker()

    // REFRESH JSON
    func updateFields() {
        let url = "https://floating-mountain-50292.herokuapp.com/cells.json"
        worker.getCells(from: url, completion: { decodedData in
            self.presenter!.updateView(with: decodedData)
        })
    }

    // VALID ALL TEXTFIELD
    func allFieldsAreValid(name: String, email: String, tel: String) -> Bool {
        if name == "" { return false }

        if !emailIsValid(email) { return false }

        if tel.count != 9  { return false }

        return true
    }

    // VALID EMAIL
    func emailIsValid(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailPred.evaluate(with: email)
    }

}

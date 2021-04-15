//
//  ViewController.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 13/04/21.
//

import UIKit

// PROTOCOL

protocol FormPresentationLogic {
    func updateView(with data: FormModel)
    func clearTextFields()
}

class FormPresenter: FormPresentationLogic {

  weak var viewController: FormDisplayLogic?

    func updateView(with data: FormModel) {
        DispatchQueue.main.async {
            self.viewController?.updateView(with: data)
        }
    }

    func clearTextFields() {
        DispatchQueue.main.async {
            self.viewController?.clearTextFields()
        }
    }
}

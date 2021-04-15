//
//  FundPresenter.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 14/04/21.
//

import UIKit

// PROTOCOL

protocol FundPresentationLogic {
    func updateView(with data: FundModel)
}

class FundPresenter: FundPresentationLogic {

    var viewController: FundDisplayLogic?

    func updateView(with data: FundModel) {
        DispatchQueue.main.async {
            self.viewController?.updateView(with: data)
        }
    }
}

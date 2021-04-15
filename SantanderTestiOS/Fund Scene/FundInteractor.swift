//
//  FundInteractor.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 14/04/21.
//

import UIKit

protocol FundBusinessLogic {
    func refreshData()
}

class FundInteractor: FundBusinessLogic {

    var presenter: FundPresentationLogic?
    var worker = FundWorker()

    
    // REFRESH JSON
    func refreshData() {
        let url = "https://floating-mountain-50292.herokuapp.com/fund.json"
        worker.queryInfo(from: url, completion: { decodedData in
            self.presenter!.updateView(with: decodedData)
        })
    }
}


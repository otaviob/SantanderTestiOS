//
//  FundWorker.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 14/04/21.
//

import UIKit

class FundWorker {
    func queryInfo(from url: String, completion: @escaping (_ decodedData: FundModel) -> Void) {

        guard let url = URL(string: url) else {
            return
        }

        URLSession.shared.dataTask(with: url) { (data, response, error) in

            guard let data = data else {
                return
            }

            do {
                
               
                // DECODER JSON
                
                let decodedData = try JSONDecoder().decode(FundModel.self, from: data)
                completion(decodedData)
            } catch {
                print(error)
            }
        }.resume()
    }
}

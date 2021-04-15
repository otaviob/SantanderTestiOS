//
//  FormWorker.swift
//  SantanderTestiOS
//
//  Created by Otavio Brito on 13/04/21.
//

import UIKit

class FormWorker {
    func getCells(from url: String, completion: @escaping (_ decodedData: FormModel) -> Void) {

        guard let url = URL(string: url) else {
            return
        }

        URLSession.shared.dataTask(with: url) { (data, response, error) in

            guard let data = data else {
                return
            }

            do {
                
                
                // DECODER JSON
                
                let decodedData = try JSONDecoder().decode(FormModel.self, from: data)
                completion(decodedData)
            } catch {
                print(error)
            }
        }.resume()
    }
}

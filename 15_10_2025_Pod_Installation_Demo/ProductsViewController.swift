//
//  ProductsViewController.swift
//  15_10_2025_Pod_Installation_Demo
//
//  Created by Vishal Jagtap on 14/01/26.
//

import UIKit

class ProductsViewController: UIViewController {
    
    @IBOutlet weak var productsTableView: UITableView!
    var url : URL?
    var urlRequest : URLRequest?
    var urlSession : URLSession?
    var products : [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jsonDecoding()
    }
    
    func jsonDecoding(){
        url = URL(string: "https://api.escuelajs.co/api/v1/categories")
        
        urlRequest = URLRequest(url: url!)
        urlRequest?.httpMethod = "GET"
        
        urlSession = URLSession(configuration: .default)
        
        let dataTask = urlSession?.dataTask(with: urlRequest!) { data, response, error in
            
            do{
                let productsRepsonse = try JSONDecoder().decode([Product].self, from: data!)
                print(productsRepsonse)
                self.products.append(contentsOf:productsRepsonse)
                print(self.products)
            }catch{
                print(error)
            }
        }
        dataTask?.resume()
    }
}

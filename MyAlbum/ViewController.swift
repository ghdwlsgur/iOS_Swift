//
//  ViewController.swift
//  MyAlbum
//
//  Created by 홍진혁 on 2021/10/10.
//

import UIKit

class ViewController: UIViewController {

    
    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
    }
    
    
    @IBAction func newAlert(_ sender: Any) {
        
        let message = "가격은 $\(currentValue)입니다."
        let alert = UIAlertController(title: "Hi", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .default, handler: { action in self.refresh()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(10000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "$\(currentValue)"
    }
    
    
    
    
}


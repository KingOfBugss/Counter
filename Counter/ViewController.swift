//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Shirokov on 21.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLable: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var count : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        countLable.text = "Значение счетчика: 0"
        // Do any additional setup after loading the view.
    }

    @IBAction func increment(_ sender: Any) {
        count += 1
        countLable.text = "Значение счетчика: \(count)"
    }
    
    @IBAction func decrement(_ sender: Any) {
        count -= 1
        countLable.text = "Значение счетчика: \(count)"
        
        if count < 0 {
            count = 0
            countLable.text = "Значение счетчика: \(count)"
        }
    }
    
    @IBAction func didResetToZero(_ sender: Any) {
        count = 0
        countLable.text = "Значение счетчика: \(count)"
    }
}


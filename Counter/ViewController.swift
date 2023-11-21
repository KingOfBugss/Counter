//
//  ViewController.swift
//  Counter
//
//  Created by Ilya Shirokov on 21.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLable: UILabel!
    @IBOutlet weak var plusCountButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var minesCountButton: UIButton!
    
    var count : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        countLable.text = "0"
        // Do any additional setup after loading the view.
    }

    @IBAction func tapDidPlusCount(_ sender: Any) {
        count += 1
        countLable.text = "\(count)"
    }

    
    @IBAction func tapDidMinesCount(_ sender: Any) {
        count -= 1
        countLable.text = "\(count)"
        
        if count < 0 {
            count = 0
            countLable.text = "\(count)"
            
        }
    }
    
    @IBAction func tapDidResetTo0(_ sender: Any) {
        count = 0
        countLable.text = "\(count)"
    }
    
    
}


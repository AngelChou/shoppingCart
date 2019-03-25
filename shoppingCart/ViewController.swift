//
//  ViewController.swift
//  shoppingCart
//
//  Created by Shun-Ching, Chou on 2019/3/24.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet var countStepper: [UIStepper]!
    @IBOutlet var numberLabel: [UILabel]!
    
    let prices = [175, 180, 150, 60, 1200]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        clearLabel()
    }
    
    func clearLabel()  {
        for label in numberLabel {
            label.text = "0個"
        }
        totalPriceLabel.text = "總金額：0元"
        for stepper in countStepper {
            stepper.value = 0
        }
    }
    
    func calculator()  {
        var sum = 0
        for (i,price) in prices.enumerated() {
            sum += Int(countStepper[i].value) * price
        }
        totalPriceLabel.text = "總金額：\(sum)元"
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        let num = Int(sender.value)
        numberLabel[sender.tag].text = "\(num)個"
        calculator()
    }
    
    
    @IBAction func clearButtonClicked(_ sender: Any) {
        clearLabel()
    }
    
}

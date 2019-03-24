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
    @IBOutlet weak var roseNumLabel: UILabel!
    @IBOutlet weak var madeleineNumLabel: UILabel!
    @IBOutlet weak var lemonNumLabel: UILabel!
    @IBOutlet weak var strawberryNumLabel: UILabel!
    @IBOutlet weak var chocolateNumLabel: UILabel!
    
    let prices = [175, 180, 150, 60, 1200]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        clearLabel()
    }
    
    @IBOutlet var countStepper: [UIStepper]!
    
    func calculator()  {
        var sum = 0
        for (i,price) in prices.enumerated() {
            sum += Int(countStepper[i].value) * price
        }
        totalPriceLabel.text = "總金額：\(sum)元"
    }
    
    @IBAction func chocolateStepper(_ sender: UIStepper) {
        let num = Int(sender.value)
        chocolateNumLabel.text = "\(num)個"
        calculator()
    }
    
    @IBAction func strawberryStepper(_ sender: UIStepper) {
        let num = Int(sender.value)
        strawberryNumLabel.text = "\(num)個"
        calculator()
    }
    
    @IBAction func lemonStepper(_ sender: UIStepper) {
        let num = Int(sender.value)
        lemonNumLabel.text = "\(num)個"
        calculator()
    }
    
    @IBAction func madeleineStepper(_ sender: UIStepper) {
        let num = Int(sender.value)
        madeleineNumLabel.text = "\(num)個"
        calculator()
    }
    
    @IBAction func roseStepper(_ sender: UIStepper) {
        let num = Int(sender.value)
        roseNumLabel.text = "\(num)個"
        calculator()
    }
    
    func clearLabel()  {
        chocolateNumLabel.text = "0個"
        strawberryNumLabel.text = "0個"
        lemonNumLabel.text = "0個"
        madeleineNumLabel.text = "0個"
        roseNumLabel.text = "0個"
        totalPriceLabel.text = "總金額：0元"
        for stepper in countStepper {
            stepper.value = 0
        }
    }
    
    @IBAction func clearButtonClicked(_ sender: Any) {
        clearLabel()
    }
    
}

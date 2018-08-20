//
//  ViewController.swift
//  Tipper
//
//  Created by Donie Ypon on 8/16/18.
//  Copyright © 2018 Donie Ypon. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billView: UIView!
    @IBOutlet weak var tipView: UIView!
    @IBOutlet weak var totalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
        
        self.billView.layer.borderWidth = 1
        self.billView.layer.borderColor = UIColor(red:100/255, green:225/255, blue:100/255, alpha: 1).cgColor
        
        self.tipView.layer.borderWidth = 1
        self.tipView.layer.borderColor = UIColor(red:100/255, green:225/255, blue:100/255, alpha: 1).cgColor
        
        self.totalView.layer.borderWidth = 1
        self.totalView.layer.borderColor = UIColor(red:100/255, green:225/255, blue:100/255, alpha: 1).cgColor
        
        //trying to make cool segment controller
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}


//
//  ViewController.swift
//  TipCalculator
//
//  Created by Arthur on 2017/1/14.
//  Copyright © 2017年 Kuan-Ting Wu (Arthur Wu). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var billField: UITextField!
    @IBOutlet var tipControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true);
    }
    @IBAction func calTip(_ sender: AnyObject)
    {
        let tipPercent = [0.18,0.2,0.25];
        
        let bill = Double(billField.text!) ?? 0;
        let tip = bill*tipPercent[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        
        tipLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
        
        
        
    }
}


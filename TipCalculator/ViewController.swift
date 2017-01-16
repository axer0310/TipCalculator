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
    let defaults = UserDefaults.standard
    
    
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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "percent");
        calTip(view);// This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }

   }


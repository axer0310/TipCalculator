//
//  ViewController.swift
//  TipCalculator
//
//  Created by Arthur on 2017/1/14.
//  Copyright © 2017年 Kuan-Ting Wu (Arthur Wu). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet var underLine1: UIView!
    @IBOutlet var underLine2: UIView!
    @IBOutlet var underLine3: UIView!
    
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var billField: UITextField!
    
    let defaults = UserDefaults.standard

    var tipControl = 0

    
    @IBOutlet var first: UIButton!
    @IBOutlet var second: UIButton!
    @IBOutlet var third: UIButton!
    
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
        let tip = bill*tipPercent[tipControl];
        let total = bill + tip;
        
        tipLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
        
        
        
    }
    @IBAction func firstButtonPressed(_ sender: Any)
    {
        tipControl = 0;
        
        underLine1.backgroundColor = UIColor.lightGray
        underLine2.backgroundColor = UIColor.white
        underLine3.backgroundColor = UIColor.white
        
        
        
        /*
        first.backgroundColor = UIColor(red:0.36, green:0.71, blue:0.96, alpha:1.0)
        second.backgroundColor = UIColor.white
        third.backgroundColor = UIColor.white
        
        
        first.setTitleColor(UIColor.white, for: UIControlState.normal)
        second.setTitleColor(UIColor(red:0.23, green:0.91, blue:0.75, alpha:1.0), for: UIControlState.normal)
        third.setTitleColor(UIColor(red:0.93, green:0.84, blue:0.37, alpha:1.0), for: UIControlState.normal)
        */
 
        calTip(view)
        
    }
    @IBAction func secondButtonPressed(_ sender: Any)
    {
        tipControl = 1;
        
        underLine1.backgroundColor = UIColor.white
        underLine2.backgroundColor = UIColor.lightGray
        underLine3.backgroundColor = UIColor.white
        
        
        /*
        second.backgroundColor = UIColor(red:0.23, green:0.91, blue:0.75, alpha:1.0)
        first.backgroundColor = UIColor.white
        third.backgroundColor = UIColor.white
        
        
        first.setTitleColor(UIColor(red:0.36, green:0.71, blue:0.96, alpha:1.0), for: UIControlState.normal)
        second.setTitleColor(UIColor.white, for: UIControlState.normal)
        third.setTitleColor(UIColor(red:0.93, green:0.84, blue:0.37, alpha:1.0), for: UIControlState.normal)
        */
        calTip(view)
    }
    @IBAction func thirdButtonPressed(_ sender: Any)
    {
        tipControl = 2;
        
        underLine1.backgroundColor = UIColor.white
        underLine2.backgroundColor = UIColor.white
        underLine3.backgroundColor = UIColor.lightGray
        
        
        /*
        third.backgroundColor = UIColor(red:0.93, green:0.84, blue:0.37, alpha:1.0)
        second.backgroundColor = UIColor.white
        first.backgroundColor = UIColor.white
        
        third.setTitleColor(UIColor.white, for: UIControlState.normal)
        first.setTitleColor(UIColor(red:0.36, green:0.71, blue:0.96, alpha:1.0), for: UIControlState.normal)
        second.setTitleColor(UIColor(red:0.23, green:0.91, blue:0.75, alpha:1.0), for: UIControlState.normal)
        */
        calTip(view)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        tipControl = defaults.integer(forKey: "percent");
        calTip(view);
        

        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        print("view did appear")
        
        if(tipControl == 0)
        {
            underLine1.backgroundColor = UIColor.lightGray
            underLine2.backgroundColor = UIColor.white
            underLine3.backgroundColor = UIColor.white
        }
        else if(tipControl == 1)
        {
            underLine1.backgroundColor = UIColor.white
            underLine2.backgroundColor = UIColor.lightGray
            underLine3.backgroundColor = UIColor.white
        }
        else if(tipControl == 2)
        {
            underLine1.backgroundColor = UIColor.white
            underLine2.backgroundColor = UIColor.white
            underLine3.backgroundColor = UIColor.lightGray
        }
    
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


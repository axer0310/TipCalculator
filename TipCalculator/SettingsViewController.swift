//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Arthur on 2017/1/15.
//  Copyright © 2017年 Kuan-Ting Wu (Arthur Wu). All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var firstPercentButton: UIButton!
    @IBOutlet var secondPercentButton: UIButton!
    @IBOutlet var thirdPercentButton: UIButton!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setFirstPercentAsDefult(_ sender: Any)
    {
        defaults.set(0, forKey: "percent");
        defaults.synchronize();
    }
    
    @IBAction func setSecondPercentAsDefult(_ sender: Any)
    {
        defaults.set(1, forKey: "percent");
        defaults.synchronize();
    }

    @IBAction func setThirdPercentAsDefult(_ sender: Any)
    {
        defaults.set(2, forKey: "percent")
        defaults.synchronize();
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

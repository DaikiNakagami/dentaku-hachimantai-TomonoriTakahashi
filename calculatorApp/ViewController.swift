//
//  ViewController.swift
//  calculatorApp
//
//  Created by 高橋知憲 on 2016/11/06.
//  Copyright © 2016年 高橋知憲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultCal: UILabel!
    
    var calNumber:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func inputOne(_ sender: UIButton) {
        calNumber = calNumber+"1"
        print(calNumber)

    }
    
    @IBAction func pushNumber(_ sender: Any) {
        
        let numButton = sender as! UIButton
        


    
    
}


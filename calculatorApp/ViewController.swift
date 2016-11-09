//
//  ViewController.swift
//  calculatorApp
//
//  Created by 高橋知憲 on 2016/11/06.
//  Copyright © 2016年 高橋知憲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!

    @IBOutlet weak var prevNumLabel: UILabel!
    
    @IBOutlet weak var calcLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = ""
        prevNumLabel.text = ""
        calcLabel.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func pushedNumButton(_ sender: UIButton) {
        textLabel.text! += sender.titleLabel!.text!
        

    }
    
    @IBAction func pushedCalcSign(_ sender: UIButton) {
        calcLabel.text! += sender.titleLabel!.text!
        prevNumLabel.text! = textLabel!.text!
        textLabel.text = ""
    }

    @IBAction func pushedEqual(_ sender: UIButton) {
        if (Int(prevNumLabel.text!) != nil && Int(textLabel.text!) != nil){
            
            switch calcLabel.text! {
            case "+":
                textLabel.text = String(Int(prevNumLabel.text!)! + Int(textLabel.text!)!)
            case "-":
                textLabel.text = String(Int(prevNumLabel.text!)! - Int(textLabel.text!)!)
            case "*":
                textLabel.text = String(Int(prevNumLabel.text!)! * Int(textLabel.text!)!)
            case "/":
                textLabel.text = String(Int(prevNumLabel.text!)! / Int(textLabel.text!)!)
            default:
                break
            }
            
            
            prevNumLabel.text = ""
            calcLabel.text = ""
        }
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        textLabel.text = ""
        

    }
    
}


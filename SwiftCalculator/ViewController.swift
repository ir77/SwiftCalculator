//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by ucuc on 2014/06/17.
//  Copyright (c) 2014年 ucuc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myNumber1 = 0
    var myNumber2 = 0
    var operation = 0
    
    @IBOutlet var myLabel : UILabel
    @IBAction func zeroButton(sender : AnyObject) {
        addNumber(0)
    }
    @IBAction func oneButton(sender : AnyObject) {
        addNumber(1)
    }
    @IBAction func twoButton(sender : AnyObject) {
        addNumber(2)
    }
    @IBAction func threeButton(sender : AnyObject) {
        addNumber(3)
    }
    @IBAction func fourButton(sender : AnyObject) {
        addNumber(4)
    }
    @IBAction func fiveButton(sender : AnyObject) {
        addNumber(5)
    }
    @IBAction func sixButton(sender : AnyObject) {
        addNumber(6)
    }
    @IBAction func sevenButton(sender : AnyObject) {
        addNumber(7)
    }
    @IBAction func eightButton(sender : AnyObject) {
        addNumber(8)
    }
    @IBAction func nineButton(sender : AnyObject) {
        addNumber(9)
    }
    
    @IBAction func plusButton(sender : AnyObject) {
        operation = 1
    }
    
    @IBAction func minusButton(sender : AnyObject) {
        operation = 2
    }
    
    @IBAction func multipleButton(sender : AnyObject) {
        operation = 3
    }
    
    @IBAction func divideButton(sender : AnyObject) {
        operation = 4
    }
    
    @IBAction func equalButton(sender : AnyObject) {
        switch operation {
            case 1 :
                myLabel.text = String(myNumber1+myNumber2)
            case 2 :
                myLabel.text = String(myNumber1-myNumber2)
            case 3 :
                myLabel.text = String(myNumber1*myNumber2)
            case 4 :
                myLabel.text = String(myNumber1/myNumber2)
            default:
                println("Error!")
        }
        operation = 0
        myNumber1 = 0
        myNumber2 = 0
    }
    func addNumber (pushedButton : Int) -> (Void) {
        if (operation == 0) {
            myNumber1 = myNumber1 * 10 + pushedButton
            myLabel.text = String(myNumber1)
        } else {
            myNumber2 = myNumber2 * 10 + pushedButton
            myLabel.text = String(myNumber2)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


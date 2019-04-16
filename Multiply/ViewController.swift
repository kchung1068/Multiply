//
//  ViewController.swift
//  Multiply
//
//  Created by Kyle Chung on 10/1/18.
//  Copyright © 2018 Kyle Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldOne.resignFirstResponder()
        textFieldTwo.resignFirstResponder()
         return true
    }
    @IBOutlet var operatorLabel: UILabel!
    
    @IBOutlet var thisImageView: UIImageView!
    
    @IBOutlet var textFieldOne: UITextField!
    
    @IBOutlet var textFieldTwo: UITextField!
    
    @IBOutlet var calculatedResult: UILabel!
    
    @IBAction func buttonCalculate(_ sender: UILabel) {
        
        
        
        if let first = textFieldOne.text, let numberOne = Int(first), let second = textFieldTwo.text, let numberTwo = Int(second) {
      
        
            
        
        var sum = numberOne + numberTwo
        var sub = numberOne - numberTwo
        var product = numberOne * numberTwo
        
        if operatorLabel.text == "+" {
            calculatedResult.text = "\(sum)"
            var halfsum = sum % 2
            if halfsum == 0 {
                var thisImage = UIImage(named: "funnyimage1")
                thisImageView.image = thisImage
            }
            
            if halfsum == 1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
            
            if halfsum == -1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
            
        }
        
        if operatorLabel.text == "-" {
            calculatedResult.text = "\(sub)"
            var halfsub = sub % 2
            if halfsub == 0 {
                var thisImage = UIImage(named: "funnyimage1")
                thisImageView.image = thisImage
            }
            
            if halfsub == 1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
            
            if halfsub == -1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
        }
        if operatorLabel.text == "*" {
            calculatedResult.text = "\(product)"
            var halfproduct = product % 2
            if halfproduct == 0 {
                var thisImage = UIImage(named: "funnyimage1")
                thisImageView.image = thisImage
            }
            
            if halfproduct == 1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
            if halfproduct == -1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
        }
        if operatorLabel.text == "/" {
            calculatedResult.text = "\(numberOne/numberTwo)"
            if (numberOne / numberTwo) % 2 == 0 {
                var thisImage = UIImage(named: "funnyimage1")
                thisImageView.image = thisImage
            }
            if (numberOne / numberTwo) % 2 == 1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
            if (numberOne / numberTwo) % 2 == -1 {
                var thisImage = UIImage(named: "funnyimage2")
                thisImageView.image = thisImage
            }
        }
        
        if calculatedResult.text == "64" {
            var thisImage = UIImage(named: "Yoshi")
            thisImageView.image = thisImage
            
            }
    }
    } 
    @IBAction func segmentControlOp(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            operatorLabel.text = "+"
            break
        case 1: operatorLabel.text = "-"
            break
        case 2: operatorLabel.text = "*"
            break
        case 3: operatorLabel.text = "/"
        default:
            operatorLabel.text = "*"
        }
        
        
    }
    
        }
        
        




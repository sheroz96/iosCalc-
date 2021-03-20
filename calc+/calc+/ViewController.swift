//
//  ViewController.swift
//  calc+
//
//  Created by MacBook on 12/28/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UITextField!
    var numberFromScreen: Double = 0;
    var firstNum: Double = 0;
    var operation: Int  = 0;
    var mathSign: Bool = false;
    var historyc: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func vergul(_ sender: Any) { 
        result.text = result.text! + "."
        
        
    }
    @IBAction func numbers(_ sender: UIButton) {
        if mathSign == true{
            result.text = String(sender.tag)
            mathSign = false
        }
        else{
            result.text = result.text! + String(sender.tag)
        }
        numberFromScreen = Double(result.text!)!
          
    }
    

    @IBAction func Buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNum = Double(result.text!)!
        
        if sender.tag == 11{ //taksim
            result.text = "";
        }
        else if sender.tag == 12{//zarb
            result.text = "";
        }
        else if sender.tag == 13{//minus
            result.text = "";
        }
        else if sender.tag == 14{//jam
            result.text = "";
        }
        
            operation = sender.tag
        mathSign = true;
    }
        else if sender.tag == 15 {
            if operation == 11{
                result.text = String (firstNum / numberFromScreen )
            }
            else if operation == 12{
                result.text = String (firstNum * numberFromScreen )
            }
            else if operation == 13{
                result.text = String (firstNum - numberFromScreen )
            }
            else if operation == 14{
                result.text = String (firstNum + numberFromScreen )
                
            }
            
            var ee: String = ""
            if operation == 11{
                ee = "/"
            }
            else if operation == 12{
                ee = "*"
            }
            else if operation == 13{
                ee = "-"
            }
            else if operation == 14{
                ee = "+"
            }
            historyc = historyc + String (firstNum) + String (ee) + String (numberFromScreen) + " = " + String(result.text!) + "\n"
        }
        else if sender.tag == 10{
            result.text = ""
            firstNum = 0
            operation = 0
        }
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let destinationVC: history = segue.destination as! history
        destinationVC.equals = historyc
        
        
    }
}

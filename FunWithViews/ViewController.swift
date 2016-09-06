//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    var count = 1
    
    @IBAction func dieRoll(sender: AnyObject) {
        let x = randomDiceRoll()
        print(x)
        dieRolled(x)
        labelUpdated(count, value: x)
        count += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true
        
        label1.hidden = true
        label2.hidden = true
        label3.hidden = true
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func hideAllView(){
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true

    }
    
    func hideAllLabels(){
        label1.hidden = true
        label2.hidden = true
        label3.hidden = true
        label4.hidden = true
        label5.hidden = true
        label6.hidden = true
    }
    
    func dieRolled(num:Int) {
        
        switch num {
        case 1:
            hideAllView()
            view4.hidden = false
        case 2:
            hideAllView()
            view1.hidden = false
            view7.hidden = false
        case 3:
            hideAllView()
            view2.hidden = false
            view4.hidden = false
            view6.hidden = false
        case 4:
            hideAllView()
            view1.hidden = false
            view2.hidden = false
            view6.hidden = false
            view7.hidden = false
        case 5:
            hideAllView()
            view1.hidden = false
            view2.hidden = false
            view4.hidden = false
            view6.hidden = false
            view7.hidden = false
        default:
            hideAllView()
            view1.hidden = false
            view2.hidden = false
            view3.hidden = false
            view5.hidden = false
            view6.hidden = false
            view7.hidden = false
            
        }
        
        
    }
    
    func labelUpdated(counter:Int, value:Int){
        switch counter {
        case 1:
            label1.text = "\(value)"
            label1.hidden = false
        case 2:
            label2.text = "\(value)"
            label2.hidden = false
        case 3:
            label3.text = "\(value)"
            label3.hidden = false
        case 4:
            label4.text = "\(value)"
            label4.hidden = false
        case 5:
            label5.text = "\(value)"
            label5.hidden = false
        case 6:
            label6.text = "\(value)"
            label6.hidden = false

        default:
            hideAllView()
            hideAllLabels()
            count = 0
            
        }
    }
    
    
    
}

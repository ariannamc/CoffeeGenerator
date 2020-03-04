//
//  ViewController.swift
//  MyCalculator
//
//  Created by Charalambous, Arianna M on 2/24/20.
//  Copyright © 2020 Charalambous, Arianna M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var library:Int = 0
    var shop:Int = 0
    var home:Int = 0
    var total:Int = 0
    var hourbonus:Int = 0

  
    
    
    //outlets
    
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBOutlet weak var myName: UITextField!
    
    
    @IBOutlet weak var hourLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    //actions
    
    
    @IBAction func submit(_ sender: Any) {
        let name = myName.text!
        myLabel.text = "\(name)! You are a(n)..."
        myName.resignFirstResponder()
        total = library + shop + home + hourbonus
        if(total <= 3) {
           myTotal.text = "Black Coffee: Fast and efficient. You're a hard worker and need all the energy you can get. You have no time for a complicated coffee order as long as you're caffeinated, you're good."
            myImage.image = UIImage(named: "blackcoffee")
                }
        else if(total > 3 && total <= 6){
           myTotal.text = "Latte: Sweet and simple. You like to take your time with life and have to sit down in one spot for hours to get your work done. Getting coffee isn't a necessity for you but it's habitual and keeps you motivated."
             myImage.image = UIImage(named: "latte")
                }
            
        else if(total > 6 && total <= 8){
            myTotal.text = "Iced Coffee: Trendy and innovative. You like to think outside of the box and you're constantly on the go so, you have no time to wait for hot coffee to cool down. You probably have great fashion sense and always have your headphones in to blur out the noise of your surroundings."
              myImage.image = UIImage(named: "icedcoffee")
                 }
            
        else {
             myTotal.text = "Tea: Organized and balanced. This may not be coffee, but you don't need it! You walk to the beat of your own drum and have your life together. You don't need a lot of caffeine to keep life moving because your sleep schedule is impeccable. (SO jealous)  "
            myImage.image = UIImage(named: "tea")
                }
        
       
    }
    
    @IBAction func selectLibrary(_ sender: UISwitch) {
        if sender.isOn {
                          library = 1
                      }
                     else {
                          library = 0
                      }
    }
    
    
    @IBAction func selectShop(_ sender: UISwitch) {
        if sender.isOn {
                        shop = 1
                    }
                    else {
                        shop = 0
                    }
    }
    
    @IBAction func selectHome(_ sender: UISwitch) {
        if sender.isOn {
             home = 1
         }
        else {
             home = 0
         }
    }
    
    
    @IBAction func myHour(_ sender: UISlider) {
        let hour = Int(sender.value)
      hourLabel.text = "You sleep \(hour) hour(s)"
       hourbonus = Int(sender.value)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


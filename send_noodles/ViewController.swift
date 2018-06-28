//
//  ViewController.swift
//  send_noodles
//
//  Created by Habin Kim on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    @IBOutlet weak var inputNameField: UITextField!
    @IBOutlet weak var inputNumberField: UITextField!
    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var nameFiller: UITextField!
    @IBOutlet weak var subHeader: UILabel!
    @IBOutlet weak var numberFiller: UITextField!
    @IBOutlet weak var submitButtonTwo: UIButton!
    @IBOutlet weak var locationFiller: UITextField!
    @IBOutlet weak var sendLocationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiLabel.isHidden = true
        nameFiller.isHidden = true
        subHeader.isHidden = true
        numberFiller.isHidden = true
        sendLocationButton.isHidden = true
        locationFiller.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendNumberButton(_ sender: Any) {
        let name = inputNameField.text!
        inputNameField.text = ""
        defaults.setValue(name, forKey: "nameKey")
        
        let number = inputNumberField.text!
        inputNumberField.text = ""
        defaults.setValue(number, forKey: "numberKey")
        
        nameFiller.text = "\(name)"
        numberFiller.text = "\(number)"
        
        inputNameField.isHidden = true
        inputNumberField.isHidden = true
        submitButtonTwo.isHidden = true
        hiLabel.isHidden = false
        nameFiller.isHidden = false
        subHeader.isHidden = false
        numberFiller.isHidden = false
        sendLocationButton.isHidden = false
    }
    
    @IBAction func sendLocationButtonTwo(_ sender: Any) {
        
    }
    
}


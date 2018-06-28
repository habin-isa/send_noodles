//
//  ViewController.swift
//  send_noodles
//
//  Created by Habin Kim on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let defaults = UserDefaults.standard
    var location:String = ""
    let locationManager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        location = "\(locValue.latitude), \(locValue.longitude)"
        
    }

    @IBOutlet weak var inputNameField: UITextField!
    @IBOutlet weak var inputNumberField: UITextField!
    @IBOutlet weak var hiLabel: UILabel!
    @IBOutlet weak var nameFiller: UITextField!
    @IBOutlet weak var subHeader: UILabel!
    @IBOutlet weak var numberFiller: UITextField!
    @IBOutlet weak var submitButtonTwo: UIButton!
    @IBOutlet weak var locationFiller: UITextField!
    @IBOutlet weak var sendLocationButton: UIButton!
    @IBOutlet weak var currentLocationDiv: UILabel!
    @IBOutlet weak var welcomeDiv: UILabel!
    @IBOutlet weak var startAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiLabel.isHidden = true
        nameFiller.isHidden = true
        subHeader.isHidden = true
        numberFiller.isHidden = true
        sendLocationButton.isHidden = true
        locationFiller.isHidden = true
        currentLocationDiv.isHidden = true
        startAgainButton.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
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
        welcomeDiv.isHidden = true
    }
    
    @IBAction func sendLocationButtonTwo(_ sender: Any) {
        locationFiller.isHidden = false
        locationFiller.text = "Location = http://maps.apple.com/?ll=\(location)"
        hiLabel.isHidden = true
        nameFiller.isHidden = true
        subHeader.isHidden = true
        numberFiller.isHidden = true
        sendLocationButton.isHidden = true
        currentLocationDiv.isHidden = false
        startAgainButton.isHidden = false
    }
    
    @IBAction func startAgainButtonTwo(_ sender: Any) {
        welcomeDiv.isHidden = false
        inputNameField.isHidden = false
        inputNumberField.isHidden = false
        submitButtonTwo.isHidden = false
        submitButtonTwo.isHidden = false
        currentLocationDiv.isHidden = true
        locationFiller.isHidden = true
        startAgainButton.isHidden = true
    }
    
}


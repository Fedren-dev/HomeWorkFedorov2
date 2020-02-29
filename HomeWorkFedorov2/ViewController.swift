//
//  ViewController.swift
//  HomeWorkFedorov2
//
//  Created by Александр Федоров on 25.02.2020.
//  Copyright © 2020 Alexander Fedorov. All rights reserved.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var sturtButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        sturtButton.layer.cornerRadius = 10
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }
    
    override func viewWillLayoutSubviews() {
         redLight.layer.cornerRadius = redLight.frame.width / 2
         yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
         greenLight.layer.cornerRadius = yellowLight.frame.width / 2
     }
    
    @IBAction func startButtonPressed() {
        
        sturtButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = . red
        }
        
    }
}




//
//  ViewController.swift
//  TrafficLight
//
//  Created by Nikita Yashin on 11.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum Currentlight {
        case red, yellow, green
    }

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var runButton: UIButton!
    
    private var currentLight = Currentlight.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        runButton.layer.cornerRadius = 10
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = redView.frame.width / 2
        greenView.layer.cornerRadius = redView.frame.width / 2
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
    }

    @IBAction func runButtonPressed() {
        if runButton.currentTitle == "START" {
            runButton.setTitle("NEXT", for: .normal)
        }
    
        switch currentLight {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
            
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
        
        default:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentLight = .red
            
        }
    }
    
}


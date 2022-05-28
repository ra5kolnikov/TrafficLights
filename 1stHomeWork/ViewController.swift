//
//  ViewController.swift
//  1stHomeWork
//
//  Created by Виталий Усольцев on 28.05.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var changeButton: UIButton!
    
    let lightIsOn: CGFloat = 1
    let lightIsOff: CGFloat = 0.3
    var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeButton.layer.cornerRadius = 10
        
        redColor.alpha = lightIsOff
        greenColor.alpha = lightIsOff
        yellowColor.alpha = lightIsOff

    }

    override func viewWillLayoutSubviews() {
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.width / 2
    }

    @IBAction func buttonPressed() {
        changeButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red :
            redColor.alpha = lightIsOn
            greenColor.alpha = lightIsOff
            currentLight = .yellow
        case .yellow :
            redColor.alpha = lightIsOff
            yellowColor.alpha = lightIsOn
            currentLight = .green
        case .green :
            yellowColor.alpha = lightIsOff
            greenColor.alpha = lightIsOn
            currentLight = .red
        }
    }
}


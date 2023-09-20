//
//  ViewController.swift
//  Counter
//
//  Created by Sergey Telnov on 19/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var labelCounter: UILabel!
    private var valueCounter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCounter.text = "Значение счётчика: \(valueCounter)"
        buttonPlus.tintColor = .blue
        buttonMinus.tintColor = .red
    }

    @IBAction func plusButtonPressed(_ sender: Any) {
        valueCounter += 1
        labelCounter.text = "Значение счётчика: \(valueCounter)"
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        valueCounter -= 1
        if valueCounter < 0 { valueCounter = 0 }
        labelCounter.text = "Значение счётчика: \(valueCounter)"
    }
}


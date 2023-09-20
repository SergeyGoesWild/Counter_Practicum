//
//  ViewController.swift
//  Counter
//
//  Created by Sergey Telnov on 19/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonCounter: UIButton!
    @IBOutlet weak var labelCounter: UILabel!
    private var valueCounter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCounter.text = "Значение счётчика: \(valueCounter)"
    }

    @IBAction func buttonPressed(_ sender: Any) {
        valueCounter += 1
        labelCounter.text = "Значение счётчика: \(valueCounter)"
    }
    
}


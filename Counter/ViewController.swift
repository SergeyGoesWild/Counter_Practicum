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
    @IBOutlet weak var logTextView: UITextView!
    
    private var valueCounter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCounter.text = "Значение счётчика: \(valueCounter)"
        buttonPlus.tintColor = .red
        buttonMinus.tintColor = .tintColor
    }

    @IBAction func plusButtonPressed(_ sender: Any) {
        valueCounter += 1
        labelCounter.text = "Значение счётчика: \(valueCounter)"
        logTextView.text += "\n\(getTime()) - Значение изменено на +1"
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        valueCounter -= 1
        if valueCounter < 0 {
            valueCounter = 0
            labelCounter.text = "Значение счётчика: \(valueCounter)"
            logTextView.text += "\n\(getTime()) - Попытка уменьшить значение счётчика ниже 0"
        } else {
            labelCounter.text = "Значение счётчика: \(valueCounter)"
            logTextView.text += "\n\(getTime()) - Значение изменено на -1"
        }
    }
    
    @IBAction func zeroButtonPressed(_ sender: Any) {
        valueCounter = 0
        labelCounter.text = "Значение счётчика: \(valueCounter)"
        logTextView.text += "\n\(getTime()) - Значение сброшено"
    }
    
    func getTime() -> String{
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "dd/MM HH:mm"
        let dateString = df.string(from: date)
        return dateString
    }
    
}


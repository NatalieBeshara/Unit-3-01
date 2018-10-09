
// Created on: 9-Oct-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program is a Guess the Number game

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let numberTextField = UITextField()
    let submitButton = UIButton()
    let answerLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Guess the Number!"
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "   "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        numberTextField.bottomAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 80).isActive = true
        
        submitButton.setTitle("Submit Guess", for: UIControlState.normal)
        submitButton.setTitleColor(.blue, for: .normal)
        submitButton.addTarget(self, action: #selector(guessTheNumber), for: .touchUpInside)
        view.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        submitButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func guessTheNumber() {
        //  
        
        var number : Int = Int(numberTextField.text!)!
        
        if number == 18 { 
            answerLabel.text = "Correct! :)"
        }
        
        if number != 18 {
            answerLabel.text = "Incorrect. Please try again."
        }
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

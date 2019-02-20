//
//  TextFieldViewController.swift
//  Crow 3.0
//
//  Created by Eduard Sinyakov on 27/01/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit

var textInTextField = ""

class TextFieldViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var askButtonOutlet: UIButton!
    @IBAction func backButton(_ sender: UIButton) {
    }
    @IBAction func askButtonAction(_ sender: UIButton) {
       textInTextField = textFieldOutlet.text ?? "Ничего не написал"
    }
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // textFieldOutlet.resignFirstResponder()
        askButtonOutlet.accessibilityActivate()
        return (true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

self.textFieldOutlet.delegate = self
        
    }
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

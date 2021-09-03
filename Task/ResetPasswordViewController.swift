//
//  ResetPasswordViewController.swift
//  Task
//
//  Created by Mina on 25/08/2021.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var forgetPasswordL: UILabel!
    @IBOutlet weak var resetPasswordTF: UITextField!
    @IBOutlet weak var resetPasswordB: UIButton!
    @IBOutlet weak var exitB: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forgetPasswordL.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        resetPasswordB.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        resetPasswordB.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
    @IBAction func ExitPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func ResetPAsswordPressed(_ sender: Any) {
    }
}

//
//  CountactUsVCViewController.swift
//  Task
//
//  Created by Mina on 04/09/2021.
//

import UIKit

class SelectServiceVC: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var priceL: UILabel!
    @IBOutlet weak var heartBottun: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView.layer.borderWidth = 1
        bottomView.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)

    }

    @IBAction func heartButtonAction(_ sender: Any) {
        heartBottun.tintColor = .red
    }
    @IBAction func selectServicebuttonAction(_ sender: Any) {
            
    }
    
}

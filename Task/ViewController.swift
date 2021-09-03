import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var createNewAccountL: UILabel!
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var repeatTF: UITextField!
    @IBOutlet weak var agreeB: UIButton!
    @IBOutlet weak var agreeL: UILabel!
    @IBOutlet weak var termsL: UILabel!
    @IBOutlet weak var notHaveAccountL: UILabel!
    @IBOutlet weak var createNewAccountB: UIButton!
    @IBOutlet weak var loginB: UIButton!
    @IBOutlet weak var ViewDesign: UIView!
    @IBOutlet weak var ImageDesign: UIImageView!
    
    var flag : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createNewAccountL.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        createNewAccountB.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        createNewAccountB.layer.borderWidth = 1
        createNewAccountB.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        createNewAccountB.layer.cornerRadius = 10
        createNewAccountB.clipsToBounds = true
        termsL.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        agreeB.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        agreeB
            .layer.borderWidth = 1
        ViewDesign.layer.cornerRadius = 40
        ViewDesign.layer.borderWidth = 2
        ViewDesign.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        ViewDesign.clipsToBounds = true
        ImageDesign.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        

    }

    @IBAction func agreeButtonAction(_ sender: UIButton) {
        flag = !flag
        if sender.isSelected {
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    @IBAction func CreateNewAccountPressed(_ sender: Any) {
        if emailTF.text?.isEmpty == true{
            errorAlert(error: "Check your first name")
        }else if firstNameTF.text?.isEmpty == true {
            errorAlert(error: "Check your E-mail")
        }else if lastNameTF.text?.isEmpty == true {
            errorAlert(error: "Check Your Last name")
        }else if passwordTF.text?.isEmpty == true {
            errorAlert(error: "Check your password")
        }else if repeatTF.text?.isEmpty == true || passwordTF.text != repeatTF.text {
            errorAlert(error: "Check repeat password")
        }else if flag == false {
            errorAlert(error: "agree the terms & conditions")
        }else {
            let resetVC = storyboard?.instantiateViewController(identifier: "ResetPasswordViewController") as? ResetPasswordViewController
            present(resetVC!, animated: true)
        }
    }
    @IBAction func LoginButtonPressed(_ sender: Any) {
    }
    
    func errorAlert (error  : String){
        let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        let  alertButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertButton)
        present(alert, animated: true, completion: nil)
    }
}


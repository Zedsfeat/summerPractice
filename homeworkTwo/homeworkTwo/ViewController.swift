import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var textFieldNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTextField()
    }
    
    func setUpTextField() {
        textFieldNumber = UITextField()
        view.addSubview(textFieldNumber)
        
        textFieldNumber.delegate = self
        
        textFieldNumber.placeholder = ""
        textFieldNumber.borderStyle = .roundedRect
        textFieldNumber.font = UIFont.systemFont(ofSize: 40)
        textFieldNumber.layer.borderColor = UIColor.white.cgColor
        textFieldNumber.layer.borderWidth = 2
        textFieldNumber.keyboardType = .phonePad
        textFieldNumber.keyboardAppearance = .light
        textFieldNumber.becomeFirstResponder()
        
        textFieldNumber.translatesAutoresizingMaskIntoConstraints = false
        textFieldNumber.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 74).isActive = true
        textFieldNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        textFieldNumber.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        guard let number = textFieldNumber.text else { return }
        if number.contains("89087") {
            guard let ListOfNumbersVC = storyboard?.instantiateViewController(withIdentifier: "ListOfNumbersViewController") else { return }
            navigationController?.pushViewController(ListOfNumbersVC, animated: true)
        } else {
            guard let WrongVC = storyboard?.instantiateViewController(withIdentifier: "WrongViewController") else { return }
            present(WrongVC, animated: true)
        }
    }
    
}


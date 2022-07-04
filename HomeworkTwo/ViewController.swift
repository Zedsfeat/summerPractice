import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var textFieldNumber: UITextField!
    var label: UILabel!
    var buttonNext: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLabel()
        setUpTextField()
        setUpButton()
    }
    
    func setUpLabel() {
        label = UILabel()
        view.addSubview(label)
        
        label.text = "Enter your phone number"
        label.font = UIFont.systemFont(ofSize: 105)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
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
        textFieldNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        textFieldNumber.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
    
    func setUpButton() {
        buttonNext = UIButton()
        view.addSubview(buttonNext)
        
        buttonNext.setImage(UIImage(named: "next"), for: .normal)

        buttonNext.translatesAutoresizingMaskIntoConstraints = false
        buttonNext.topAnchor.constraint(equalTo: view.topAnchor, constant: 53).isActive = true
        buttonNext.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        buttonNext.heightAnchor.constraint(equalToConstant: 80).isActive = true
        buttonNext.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        buttonNext.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction() {
        guard let number = textFieldNumber.text else { return }
        if number.contains("89087") {
            guard let newVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForListOfNumbers") else { return }
            navigationController?.pushViewController(newVC, animated: true)
        }
        
    }
}



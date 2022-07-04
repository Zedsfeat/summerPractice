import UIKit


class ViewController: UIViewController {
    var textField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = "HAHA"
        
        view.addSubview(textField)
        
        textField.frame = CGRect(x: 100, y: 100, width: 300, height: 300)
        
    }
}

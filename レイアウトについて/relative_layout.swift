import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.frame = CGRect(x: view.frame.origin.x + 50,
                             y: 50,
                             width: view.frame.width - 100,
                             height: 100)
        label.text = "Hello, World!"
        label.textAlignment = .center
        view.addSubview(label)
    }
}

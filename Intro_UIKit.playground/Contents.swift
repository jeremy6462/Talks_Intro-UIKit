//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    var label: UILabel?
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        self.label = label
        
        let button = UIButton(frame: CGRect(x: 150, y: 225, width: 200, height: 44))
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Submit", for: .normal)
        button.addTarget(self, action: #selector(buttonWasPressed), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(button)
        self.view = view
    }
    
    @objc func buttonWasPressed() {
        self.label?.text = "Hello Amherst!"
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

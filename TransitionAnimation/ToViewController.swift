import UIKit

class ToViewController: UIViewController {
    let delegate = TransitionDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue

        transitioningDelegate = delegate

        let button = UIButton()
        button.setTitleColor(.white, for: .normal)
        button.setTitle("元の画面へ", for: .normal)
        button.addTarget(self, action: #selector(ToViewController.back(_:)), for: .touchUpInside)
        button.frame.size = CGSize(width: 100, height: 50)
        button.center = view.center

        view.addSubview(button)
    }

    @objc func back(_ sender: UIButton?) {
        dismiss(animated: true, completion: nil)
    }
}

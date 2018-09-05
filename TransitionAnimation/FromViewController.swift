import UIKit

class FromViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("次の画面へ", for: .normal)
        button.addTarget(self, action: #selector(FromViewController.next(_:)), for: .touchUpInside)
        button.frame.size = CGSize(width: 100, height: 50)
        button.center = view.center

        view.addSubview(button)
    }

    @objc func next(_ sender: UIButton) {
        let nextVC = ToViewController()
        present(nextVC, animated: true, completion: { print("completed") })
    }
}


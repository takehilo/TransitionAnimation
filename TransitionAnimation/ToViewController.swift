import UIKit

class ToViewController: UIViewController {
    let delegate = TransitionDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()

        transitioningDelegate = delegate

        view.backgroundColor = .blue
    }
}

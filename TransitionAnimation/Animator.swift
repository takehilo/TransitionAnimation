import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1.5
    }

    func animationEnded(_ transitionCompleted: Bool) {
        print("transitionCompleted: \(transitionCompleted)")
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard
//            let fromVC = transitionContext.viewController(forKey: .from),
            let toVC = transitionContext.viewController(forKey: .to),
//            let fromView = transitionContext.view(forKey: .from),
            let toView = transitionContext.view(forKey: .to) else { return }

        let containerView = transitionContext.containerView
        let containerFrame = containerView.frame
//        let fromFiewFinalFrame = transitionContext.finalFrame(for: fromVC)
        let toViewStartFrame = transitionContext.initialFrame(for: toVC)
        let toViewFinalFrame = transitionContext.finalFrame(for: toVC)

        containerView.addSubview(toView)
        toView.frame = CGRect(
            origin: CGPoint(x: containerFrame.size.width, y: containerFrame.size.height),
            size: toViewStartFrame.size)

        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            animations: {
                toView.frame = toViewFinalFrame
            },
            completion: { _ in
                transitionContext.completeTransition(true)
            }
        )
    }
}

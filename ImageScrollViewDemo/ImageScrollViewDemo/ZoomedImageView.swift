import UIKit

protocol ZoomedImageViewDelegate: class {
    func zoomedImageViewFrameDidChanged(_ frame: CGRect)
}

public class ZoomedImageView: UIImageView {
    
    weak var delegate: ZoomedImageViewDelegate?
    
    public override var frame: CGRect {
        didSet {
            delegate?.zoomedImageViewFrameDidChanged(self.frame)
            print("Zoomed image view frame = \(frame)")
        }
    }
}

import UIKit

private var materialKey = false

@IBDesignable
extension UIView {
    
    @IBInspectable var materialDesign: Bool {
        
        get {
            
            return materialKey
        }
        
        set {
            
            materialKey = newValue
            
            if materialKey {
                
                self.layer.masksToBounds = false
                self.layer.shadowOpacity = 0.8
                self.layer.shadowRadius = 3.0
                self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
                self.layer.shadowColor = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1.0).cgColor
                
            } else {
                
                self.layer.shadowOpacity = 0
                self.layer.shadowRadius = 0
                self.layer.shadowColor = nil
            }
        }
    }
    
}
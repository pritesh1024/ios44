import UIKit

class ThemeManager {
     static func applyTheme() {
        // Start Application Themes
        //Login Gradient
        
        let loginBGLayerClosure:UIView = {
            let loginBGLayer = UIView(frame: CGRect(x: -91, y: 0, width: 932, height: 1556))
            loginBGLayer.alpha = 0.96
            
            let loginGradient = CAGradientLayer()
            loginGradient.frame = CGRect(x: 0, y: 0, width: 932, height: 1556)
            loginGradient.colors = [
                UIColor.white.cgColor,
                UIColor(red:0, green:0.55, blue:0.81, alpha:1).cgColor,
                UIColor(red:0.16, green:0.37, blue:0.76, alpha:1).cgColor,
                UIColor(red:0.31, green:0.16, blue:1, alpha:0.93).cgColor
            ]
            loginGradient.locations = [0, 0.42900085, 0.8732414, 1]
            loginGradient.startPoint = CGPoint(x: 0.5, y: 0.86)
            loginGradient.endPoint = CGPoint(x: 0.5, y: 0)
            loginBGLayer.layer.addSublayer(loginGradient)
            
            return loginBGLayer
        }()
        
         let loginBGLayer = UIView(frame: CGRect(x: -91, y: 0, width: 932, height: 1556))
         loginBGLayer.alpha = 0.96

         let loginGradient = CAGradientLayer()
         loginGradient.frame = CGRect(x: 0, y: 0, width: 932, height: 1556)
         loginGradient.colors = [
         	UIColor.white.cgColor,
         	UIColor(red:0, green:0.55, blue:0.81, alpha:1).cgColor,
         	UIColor(red:0.16, green:0.37, blue:0.76, alpha:1).cgColor,
         	UIColor(red:0.31, green:0.16, blue:1, alpha:0.93).cgColor
         ]
         loginGradient.locations = [0, 0.42900085, 0.8732414, 1]
         loginGradient.startPoint = CGPoint(x: 0.5, y: 0.86)
         loginGradient.endPoint = CGPoint(x: 0.5, y: 0)
         loginBGLayer.layer.addSublayer(loginGradient)

         // self.view.addSubview(loginBGLayer)

         // Action Button
         let primaryActionButtonLayer = UIView(frame: CGRect(x: 40, y: 815, width: 670, height: 100))
         primaryActionButtonLayer.layer.cornerRadius = 6
         primaryActionButtonLayer.layer.borderWidth = 1
         primaryActionButtonLayer.layer.borderColor = UIColor(red:0.16, green:0.08, blue:0.5, alpha:1).cgColor
         primaryActionButtonLayer.layer.shadowOffset = CGSize(width: 1, height: 1)
         primaryActionButtonLayer.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.14).cgColor
         primaryActionButtonLayer.layer.shadowOpacity = 1
         primaryActionButtonLayer.layer.shadowRadius = 6

         let primaryActionButtonGradient = CAGradientLayer()
         primaryActionButtonGradient.frame = CGRect(x: 0, y: 0, width: 670, height: 100)
         primaryActionButtonGradient.colors = [
         	UIColor(red:0.32, green:0.18, blue:0.71, alpha:1).cgColor,
         	UIColor(red:0.16, green:0.08, blue:0.5, alpha:1).cgColor
         ]
         primaryActionButtonGradient.locations = [0, 1]
         primaryActionButtonGradient.startPoint = CGPoint(x: 0.5, y: 0)
         primaryActionButtonGradient.endPoint = CGPoint(x: 0.5, y: 1)
         primaryActionButtonGradient.cornerRadius = 6
         primaryActionButtonLayer.layer.addSublayer(primaryActionButtonGradient)

   //      self.view.addSubview(primaryActionButtonLayer)

         //Toolbar Theme
         let toolbarTextLayer = UILabel(frame: CGRect(x: 101, y: 61, width: 561, height: 46))
         toolbarTextLayer.lineBreakMode = .byWordWrapping
         toolbarTextLayer.numberOfLines = 0
         toolbarTextLayer.textColor = UIColor.white
         toolbarTextLayer.textAlignment = .center
         let toolbarTextContent = "TRIP OPTIONS"
         let toolbarTextString = NSMutableAttributedString(string: toolbarTextContent, attributes: [
            NSAttributedStringKey.font: UIFont(name: "DINCondensed-Bold", size: 48)!
         ])
         let toolbarTextRange = NSRange(location: 0, length: toolbarTextString.length)
         let toolbarParagraphStyle = NSMutableParagraphStyle()
         toolbarParagraphStyle.lineSpacing = 1.21
        toolbarTextString.addAttribute(NSAttributedStringKey.paragraphStyle, value:toolbarParagraphStyle, range: toolbarTextRange)
        toolbarTextString.addAttribute(NSAttributedStringKey.kern, value: 1, range: toolbarTextRange)
         toolbarTextLayer.attributedText = toolbarTextString
         toolbarTextLayer.sizeToFit()
     //    self.view.addSubview(toolbarTextLayer)
         // End Application Themes

         // Start Vendor Themes
         // Uber Theme
         let uberGradientLayer = UIView(frame: CGRect(x: 0, y: 0, width: 750, height: 166))

         let uberGradient = CAGradientLayer()
         uberGradient.frame = CGRect(x: 0, y: 0, width: 750, height: 166)
         uberGradient.colors = [
         	UIColor(red:0, green:0.65, blue:0.67, alpha:1).cgColor,
         	UIColor.black.cgColor
         ]
         uberGradient.locations = [0, 1]
         uberGradient.startPoint = CGPoint(x: 0.39, y: 0)
         uberGradient.endPoint = CGPoint(x: 0.39, y: 1.63)
         uberGradientLayer.layer.addSublayer(uberGradient)

         let uberShadow0 = UIView(frame: CGRect(x: 0, y: 0, width: 750, height: 166))
         uberShadow0.layer.shadowOffset = CGSize(width: 0, height: 5)
         uberShadow0.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.5).cgColor
         uberShadow0.layer.shadowOpacity = 1
         uberShadow0.layer.shadowRadius = 14
         uberGradientLayer.addSubview(uberShadow0)

         let uberShadow1 = UIView(frame: CGRect(x: 0, y: 0, width: 750, height: 166))
         uberShadow1.layer.shadowOffset = CGSize(width: 0, height: 2)
         uberShadow1.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.5).cgColor
         uberShadow1.layer.shadowOpacity = 1
         uberShadow1.layer.shadowRadius = 4
         uberGradientLayer.addSubview(uberShadow1)

       //  self.view.addSubview(uberGradientLayer)

         //Lyft Theme
         let lyftLayer = UIView(frame: CGRect(x: 2, y: 0, width: 750, height: 142))

         let lyftGradient = CAGradientLayer()
         lyftGradient.frame = CGRect(x: 0, y: 0, width: 750, height: 142)
         lyftGradient.colors = [
         	UIColor(red:0.45, green:0.16, blue:0.49, alpha:1).cgColor,
         	UIColor(red:0.76, green:0.19, blue:0.73, alpha:1).cgColor
         ]
         lyftGradient.locations = [0, 1]
         lyftGradient.startPoint = CGPoint(x: 0.62, y: 0.98)
         lyftGradient.endPoint = CGPoint(x: 0.62, y: 0)
         lyftLayer.layer.addSublayer(lyftGradient)

      //   self.view.addSubview(lyftLayer)

         // COTA Theme
         let cotaLayer = UIView(frame: CGRect(x: 0, y: 0, width: 750, height: 166))

         let cotaGradient = CAGradientLayer()
         cotaGradient.frame = CGRect(x: 0, y: 0, width: 750, height: 166)
         cotaGradient.colors = [
         	UIColor(red:0, green:0.16, blue:0.47, alpha:1).cgColor,
         	UIColor(red:0.02, green:0.12, blue:0.31, alpha:1).cgColor
         ]
         cotaGradient.locations = [0, 1]
         cotaGradient.startPoint = CGPoint(x: 0.6, y: 0.95)
         cotaGradient.endPoint = CGPoint(x: 0.6, y: 0.02)
         cotaLayer.layer.addSublayer(cotaGradient)

         let cotaShadow0 = UIView(frame: CGRect(x: 0, y: 0, width: 750, height: 166))
         cotaShadow0.layer.shadowOffset = CGSize(width: 0, height: 5)
         cotaShadow0.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.5).cgColor
         cotaShadow0.layer.shadowOpacity = 1
         cotaShadow0.layer.shadowRadius = 14
         cotaLayer.addSubview(cotaShadow0)

         let cotaShadow1 = UIView(frame: CGRect(x: 0, y: 0, width: 750, height: 166))
         cotaShadow1.layer.shadowOffset = CGSize(width: 0, height: 2)
         cotaShadow1.layer.shadowColor = UIColor(red:0, green:0, blue:0, alpha:0.5).cgColor
         cotaShadow1.layer.shadowOpacity = 1
         cotaShadow1.layer.shadowRadius = 4
         cotaLayer.addSubview(cotaShadow1)

      //   self.view.addSubview(cotaLayer)

         // End Vendor Themes
     }
}

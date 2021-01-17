//
//  XHTask3.swift
//  Xibs_Homework
//
//  Created by Дарья Астапова on 17.01.21.
//

import UIKit

@IBDesignable
class XHTask3: UIView {
    // MARK: - Outlets
    
    @IBOutlet weak var rootView: UIView!
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var someText: UILabel!
    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var bottomLine: UIView!
    
    // MARK: - Variables
    
    @IBInspectable
    var imageName: String = "default" {
        didSet {
            self.personImage.image = UIImage(named: self.imageName)
        }
    }
    
    @IBInspectable
    var imageCornerRadius: CGFloat = 0 {
        didSet {
            self.personImage.layer.cornerRadius = self.imageCornerRadius
        }
    }
    
    @IBInspectable
    var imageBorderWidth: CGFloat = 0 {
        didSet {
            self.personImage.layer.borderWidth = self.imageBorderWidth
        }
    }
    
    @IBInspectable
    var imageBorderColor: UIColor = .clear {
        didSet {
            self.personImage.layer.borderColor = self.imageBorderColor.cgColor
        }
    }
    
    @IBInspectable
    var titleText: String = "" {
        didSet {
            self.someText.text = self.titleText
        }
    }
    
    @IBInspectable
    var titleFontSize: CGFloat = 25 {
        didSet {
            self.someText.font = .boldSystemFont(ofSize: self.titleFontSize)
        }
    }
    
    @IBInspectable
    var titleColor: UIColor = .black {
        didSet {
            self.someText.textColor = self.titleColor
        }
    }
    
    @IBInspectable
    var lineColor: UIColor = .gray {
        didSet {
            self.bottomLine.backgroundColor = self.lineColor
        }
    }
    // MARK: - Initializations
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadFromNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        loadFromNib()
    }
}

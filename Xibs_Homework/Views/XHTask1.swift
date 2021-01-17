//
//  XHTask1.swift
//  Xibs_Homework
//
//  Created by Дарья Астапова on 17.01.21.
//

import UIKit

@IBDesignable
class XHTask1: UIView {
    
    // MARK: - Outlets
    
    @IBOutlet weak var task1View: UIView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    
    // MARK: - Variables
    
    @IBInspectable
    var imageName: String = "default" {
        didSet {
            self.userImage.image = UIImage(named: self.imageName)
        }
    }
    
    @IBInspectable
    var imageCornerRadius: CGFloat = 0 {
        didSet {
            self.userImage.layer.cornerRadius = self.imageCornerRadius
        }
    }
    
    @IBInspectable
    var imageBorderWidth: CGFloat = 0 {
        didSet {
            self.userImage.layer.borderWidth = self.imageBorderWidth
        }
    }
    
    @IBInspectable
    var imageBorderColor: UIColor = .clear {
        didSet {
            self.userImage.layer.borderColor = self.imageBorderColor.cgColor
        }
    }
    
    @IBInspectable
    var titleFontSize: CGFloat = 30 {
        didSet {
            self.titleLabel.font = .boldSystemFont(ofSize: titleFontSize)
        }
    }
    
    @IBInspectable
    var titleColor: UIColor = .black {
        didSet {
            self.titleLabel.textColor = self.titleColor
        }
    }
    
    @IBInspectable
    var titleText: String = "" {
        didSet {
            self.titleLabel.text = self.titleText
        }
    }
    
    @IBInspectable
    var descriptionFontSize: CGFloat = 25 {
        didSet {
            self.descriptionLabel.font = .systemFont(ofSize: self.descriptionFontSize)
        }
    }
    
    @IBInspectable
    var descriptionColor: UIColor = .gray {
        didSet {
            self.descriptionLabel.textColor = self.descriptionColor
        }
    }
    
    @IBInspectable
    var descriptionText: String = "" {
        didSet {
            self.descriptionLabel.text = self.descriptionText
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

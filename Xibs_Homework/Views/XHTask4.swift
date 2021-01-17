//
//  XHTask4.swift
//  Xibs_Homework
//
//  Created by Дарья Астапова on 17.01.21.
//

import UIKit

class XHTask4: UIView {
    // MARK: - Outlets
    @IBOutlet weak var rootView: UIView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var surnameView: UIView!
    @IBOutlet weak var surname: UILabel!
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
    var nameFontSize: CGFloat = 30 {
        didSet {
            self.name.font = .boldSystemFont(ofSize: nameFontSize)
        }
    }
    
    @IBInspectable
    var nameColor: UIColor = .black {
        didSet {
            self.name.textColor = self.nameColor
        }
    }
    
    @IBInspectable
    var nameText: String = "" {
        didSet {
            self.name.text = self.nameText
        }
    }
    
    @IBInspectable
    var nameBackgroundColor: UIColor = .clear {
        didSet {
            self.nameView.backgroundColor = self.nameBackgroundColor
        }
    }
    
    @IBInspectable
    var surnameFontSize: CGFloat = 30 {
        didSet {
            self.surname.font = .boldSystemFont(ofSize: surnameFontSize)
        }
    }
    
    @IBInspectable
    var surnameColor: UIColor = .black {
        didSet {
            self.surname.textColor = self.surnameColor
        }
    }
    
    @IBInspectable
    var surnameText: String = "" {
        didSet {
            self.surname.text = self.surnameText
        }
    }
    
    @IBInspectable
    var surnameBackgroundColor: UIColor = .clear {
        didSet {
            self.surnameView.backgroundColor = self.surnameBackgroundColor
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

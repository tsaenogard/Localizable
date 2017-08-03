//
//  ViewController.swift
//  Lang
//
//  Created by Xcode on 2017/4/28.
//  Copyright © 2017年 wtfcompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nameLabel: UILabel!
    var ageLabel: UILabel!
    var genderLabel: UILabel!
    var imageView: UIImageView!
    
    enum Lang: String {
        case name = "name"
        case age = "age"
        case gender = "gender"
        case image = "boy"
        
        func localized(_ comment: String) -> String {
           return NSLocalizedString(self.rawValue, comment: comment)
        }
    }
    enum Image: String {
        case child = "boy"
        func localized(_ comment: String) -> UIImage? {
            return UIImage(named: self.rawValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let frameW = UIScreen.main.bounds.width
        let gap: CGFloat = 10
        
        self.nameLabel = UILabel(frame: CGRect(x: 0, y: 120, width: frameW, height: 21))
        self.nameLabel.textAlignment = .center
        self.view.addSubview(nameLabel)
        
        let ageY = self.nameLabel.frame.maxY + gap
        self.ageLabel = UILabel(frame: CGRect(x: 0, y: ageY, width: frameW, height: 21))
        self.ageLabel.textAlignment = .center
        self.view.addSubview(ageLabel)
        
        let genderY = self.ageLabel.frame.maxY + gap
        self.genderLabel = UILabel(frame: CGRect(x: 0, y: genderY, width: frameW, height: 21))
        self.genderLabel.textAlignment = .center
        self.view.addSubview(genderLabel)
        
        let imageY = self.genderLabel.frame.maxY + gap
        self.imageView = UIImageView(frame: CGRect(x: frameW / 4, y: imageY, width: frameW / 2, height: frameW / 2))
        self.imageView.contentMode = .scaleAspectFill
        self.view.addSubview(imageView)
        
        self.nameLabel.text = Lang.name.localized("名字")
        self.ageLabel.text = Lang.age.localized("年齡")
        self.genderLabel.text = Lang.gender.localized("性別")
        self.imageView.image = Image.child.localized("圖片")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  NotificationButton.swift
//  CustomButton
//
//  Created by Banyar on 12/4/20.
//  Copyright © 2020 BNH. All rights reserved.
//

import UIKit

class NotificationButton: UIButton {

    var notiCountLabel: UILabel = UILabel()
    
    var notiCountValue: Int?{
        didSet{
            self.addNotiCountLabel(notiCountValue)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addNotiCountLabel(nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addNotiCountLabel(nil)
        
    }
    
    func addNotiCountLabel(_ notiCount: Int?) {
        notiCountLabel.isHidden = (notiCount == nil)
        
        notiCountLabel.text = "\(notiCount ?? 0)"
        notiCountLabel.textColor = UIColor.white
        notiCountLabel.backgroundColor = UIColor.red
        notiCountLabel.sizeToFit()
        notiCountLabel.textAlignment = .center
        
        let badgeSize = notiCountLabel.frame.size
        let height = max(18, badgeSize.height + 5)
        let width = max(height, badgeSize.width)
        
        let x = self.frame.width - CGFloat((width / 2.0))
        let y = CGFloat(-(height / 2.0))
        notiCountLabel.frame = CGRect(x: x, y: y, width: CGFloat(width), height: CGFloat(height))
        notiCountLabel.layer.cornerRadius = notiCountLabel.frame.height/2
        notiCountLabel.layer.masksToBounds = true
        addSubview(notiCountLabel)
    }

}

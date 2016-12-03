//
//  RightViewCell.swift
//  LGSideMenuControllerDemo
//
//  Created by Grigory Lutkov on 26.04.15.
//  Copyright © 2015 Grigory Lutkov <Friend.LGA@gmail.com>. All rights reserved.
//

import UIKit

class RightViewCell: UITableViewCell {

    @IBOutlet var separatorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .clear
        
        textLabel!.textAlignment = .center
        textLabel!.numberOfLines = 0
        textLabel!.lineBreakMode = .byWordWrapping
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        textLabel!.textColor = tintColor
        separatorView.backgroundColor = tintColor.withAlphaComponent(0.4)
    }

    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        textLabel!.textColor = highlighted ? UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 1.0) : tintColor
    }
    
}
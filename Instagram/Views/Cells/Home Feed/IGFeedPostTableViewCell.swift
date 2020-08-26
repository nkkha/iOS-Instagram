//
//  IGFeedPostTableViewCell.swift
//  Instagram
//
//  Created by apple on 8/26/20.
//  Copyright © 2020 Kha Nguyen. All rights reserved.
//

import UIKit

class IGFeedPostTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
        // Configure the cell
        
    }
}

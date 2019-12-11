//
//  TitleTableViewCell.swift
//  temp
//
//  Created by Ahmed Ayaz  on 12/10/19.
//  Copyright © 2019 Ahmed Ayaz Buttar. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    
    let titleView: UITextField = {
       let textView = UITextField()
        textView.text = "Add your title ... "
        textView.font = UIFont.preferredFont(forTextStyle: .body)
//        textView.sizeToFit()
//        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints=false
        return textView
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(titleView)
        setTitleViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setTitleViewConstraints(){
        titleView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor,constant: 10).isActive=true
        titleView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor,constant: -10).isActive=true
        titleView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive=true
        titleView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor,constant: -10).isActive=true
    }

}


//
//  BestsellerBookCell.swift
//  SocietyLibrary
//
//  Created by Tia Lendor on 10/18/19.
//  Copyright © 2019 Tia Lendor. All rights reserved.
//

import UIKit

class BestsellerBookCell: UICollectionViewCell {
    lazy var bookImage: UIImageView = {
        let bookImage = UIImageView()
        
        return bookImage
        
    }()
    
    lazy var bookName: UILabel = {
        var bookName = UILabel()
        
        
        return bookName
    }()
    
    lazy var bookText: UITextView = {
        let bookText = UITextView()
        
        
        return bookText
    }()
    
    
    lazy var bookStackView: UIStackView = {
        let bookStack = UIStackView(arrangedSubviews: [bookImage, bookName, bookText])
        bookStack.axis = .horizontal
        bookStack.alignment = .center
        bookStack.distribution = .fillEqually
        bookStack.spacing = 10
        return bookStack
    }()
    
    private func constrainStackView(){
    bookStackView.translatesAutoresizingMaskIntoConstraints = false
          NSLayoutConstraint.activate([
              bookStackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
              bookStackView.topAnchor.constraint(equalTo: bookStackView.bottomAnchor, constant: 10),
              bookStackView.heightAnchor.constraint(equalToConstant: 50),
              bookStackView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
          ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(bookStackView)
        constrainStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
    
    
    
}

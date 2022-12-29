//
//  CollectionViewCell.swift
//  CollectionView_CompositionalLayout
//
//  Created by Ahmed Salem on 29/12/2022.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let identifier = "MyCollectionViewCell"
    
    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images: [UIImage] = [
        UIImage(named: "Image_1"),
        UIImage(named: "Image_2"),
        UIImage(named: "Image_3"),
        UIImage(named: "Image_4"),
        UIImage(named: "Image_5"),
        UIImage(named: "Image_6")
        ].compactMap({ $0 })
        print(images.count)
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    
}

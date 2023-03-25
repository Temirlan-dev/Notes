//
//  OnboardingCollectionViewCell.swift
//  Notes
//
//  Created by Toktosunov on 25/3/23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let idintifier = "OnboardingCollectionViewCell"
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        imageView.image = slide.image
        titleLabel.text = slide.title
        descLabel.text = slide.desc
    }
}

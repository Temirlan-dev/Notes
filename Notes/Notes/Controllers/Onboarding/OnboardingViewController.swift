//
//  OnboardingViewController.swift
//  Notes
//
//  Created by Toktosunov on 23/3/23.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var button: UIButton!
    
    var slides: [OnboardingSlide] = []
    var page = 0 {
        didSet {
            pageControl.currentPage = page 
            if page == slides.count - 1 {
                button.setTitle("get started", for: .normal)
            } else {
                button.setTitle("next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        self.collectionView.decelerationRate = UIScrollView.DecelerationRate.fast
        pageControl.numberOfPages = slides.count
    }
    
    func configView() {
        view.backgroundColor = .white
        setupButton()
        setupTableView()
        dataForSlides()
    }
    
    func setupButton() {
        button.layer.cornerRadius = 10
    }
    
    func dataForSlides() {
        slides = [
            OnboardingSlide(title: "Первое окно", desc: "тест", image: #imageLiteral(resourceName: "notes")),
            OnboardingSlide(title: "Второе окно", desc: "тест", image: #imageLiteral(resourceName: "note")),
            OnboardingSlide(title: "Третье окно", desc: "тест", image: #imageLiteral(resourceName: "notes")),
        ]
    }

    @IBAction func nextClickButton(_ sender: UIButton) {
        if page == slides.count - 1 {
            print("click")
        } else {
            page += 1
            let indexPath = IndexPath(item: page, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
}

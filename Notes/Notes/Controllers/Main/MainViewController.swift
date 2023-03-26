//
//  MainViewController.swift
//  Notes
//
//  Created by Toktosunov on 26/3/23.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var titleData: [Note] = [
        Note(title: "test1"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2"),
        Note(title: "test2")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        title = "Notes"
        setupTableView()
    }

}

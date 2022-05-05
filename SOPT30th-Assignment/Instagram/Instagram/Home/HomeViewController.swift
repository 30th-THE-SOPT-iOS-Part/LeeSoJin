//
//  HomeViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/17.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var storyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: StoryCollectionViewCell.identifier, bundle: nil)
        storyCollectionView.register(nib, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        
        storyCollectionView.delegate = self
        storyCollectionView.dataSource = self
    }

}

extension HomeViewController: UICollectionViewDelegate{
    
}

extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StoryUserDataModel.sampleData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = storyCollectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else { return UICollectionViewCell() }
        cell.setData(userData: StoryUserDataModel.sampleData[indexPath.row])
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        let cellWidth = width * (58/375)
        let cellHeight = cellWidth * (72/58)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:4, left:4, bottom: 8, right: 4)
    }
    
}

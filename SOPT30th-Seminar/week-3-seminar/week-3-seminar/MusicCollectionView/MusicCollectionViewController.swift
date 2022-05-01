//
//  MusicCollectionViewController.swift
//  week-3-seminar
//
//  Created by Sojin Lee on 2022/05/01.
//

import UIKit

class MusicCollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: MusicCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: MusicCollectionViewCell.identifier)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }

}

extension MusicCollectionViewController: UICollectionViewDelegate{
    
}

extension MusicCollectionViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCollectionViewCell.identifier, for: indexPath) as? MusicCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setData(AlbumDataModel.sampleData[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AlbumDataModel.sampleData.count
    }
}

extension MusicCollectionViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //content 외부에 존재하는 inset의 크기 결정
        return UIEdgeInsets(top:5, left:10, bottom:10, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //cell 위 아래 간격 지정
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //아이템 크기를 CGSize로 return
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (176/375)
        let cellHeight = cellWidth * (213/176)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        //cell의 좌우 간격을 지정
        return 3
    }
}

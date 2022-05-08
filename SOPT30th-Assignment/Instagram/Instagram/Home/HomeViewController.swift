//
//  HomeViewController.swift
//  Instagram
//
//  Created by Sojin Lee on 2022/04/17.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - @IBOutlet
    @IBOutlet weak var feedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXib()
        registerDelegate()
    }

    private func registerXib(){
        let feedCell = UINib(nibName: FeedTableViewCell.identifier, bundle: nil)
        feedTableView.register(feedCell, forCellReuseIdentifier: FeedTableViewCell.identifier)
        let storyCell = UINib(nibName: StoryTableViewCell.identifier, bundle: nil)
        feedTableView.register(storyCell, forCellReuseIdentifier: StoryTableViewCell.identifier)
    }
    
    private func registerDelegate(){
        feedTableView.delegate = self
        feedTableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 84 : 488
    }
}

// MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else {
            return FeedDataModel.sampleData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: StoryTableViewCell.identifier, for: indexPath) as? StoryTableViewCell else { return UITableViewCell() }

            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as? FeedTableViewCell else { return UITableViewCell() }

            cell.setData(FeedDataModel.sampleData[indexPath.row])
            return cell
        default:
            return UITableViewCell()
        }
    }
}

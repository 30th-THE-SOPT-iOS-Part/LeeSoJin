//
//  MusicTableViewController.swift
//  week-3-seminar
//
//  Created by Sojin Lee on 2022/05/01.
//

import UIKit

class MusicTableViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: MusicTableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: MusicTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}


extension MusicTableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

extension MusicTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MusicDataModel.sampleData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.identifier, for: indexPath) as? MusicTableViewCell else { return UITableViewCell() }
        
        cell.setData(MusicDataModel.sampleData[indexPath.row])
        
        return cell
    }
}

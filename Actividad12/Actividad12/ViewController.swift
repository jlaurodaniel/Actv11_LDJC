//
//  ViewController.swift
//  Actividad12
//
//  Created by user182933 on 5/3/21.
//  Copyright © 2021 user182933. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource=self        // Do any additional setup after loading the view.
    }


}

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Numbers.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "NumberCollectionViewCell", for: indexPath)as! NumberCollectionViewCell
        cell.setup(with: Numbers[indexPath.row])
        return cell
    }
}

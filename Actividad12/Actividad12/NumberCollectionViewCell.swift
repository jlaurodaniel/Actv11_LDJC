//
//  NumberCollectionViewCell.swift
//  Actividad12
//
//  Created by user182933 on 5/3/21.
//  Copyright © 2021 user182933. All rights reserved.
//

import UIKit

class NumberCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var NumberLbl: UILabel!
    
    func setup (with Number:Number){
        NumberLbl.text=String(Number.number)
    }
}

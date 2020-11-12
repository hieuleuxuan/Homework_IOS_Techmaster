//
//  ZaloCell.swift
//  Baitap_ScrollView_TableView
//
//  Created by Leu Xuan Hieu on 11/11/20.
//  Copyright © 2020 Leu Xuan Hieu. All rights reserved.
//

import UIKit

class ZaloCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var messView: UILabel!
    @IBOutlet weak var timeView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

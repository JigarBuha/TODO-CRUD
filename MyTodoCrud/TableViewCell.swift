//
//  TodolistTableViewCell.swift
//  MyTodoCrud
//
//  Created by Apple on 23/08/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbltodoid: UILabel!
    @IBOutlet weak var lbltodotitle: UILabel!
    @IBOutlet weak var btnupdate: UIButton!
    @IBOutlet weak var lbltododetails: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

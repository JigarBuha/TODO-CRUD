//
//  TodoTableViewCell.swift
//  MyTodoCrud
//
//  Created by Apple on 29/07/23.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var lbltitle: UILabel!
    @IBOutlet weak var lbldetails: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

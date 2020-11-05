//
//  TableViewCell.swift
//  homework2
//
//  Created by User on 2020/11/5.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet var nameLable: UILabel!
    @IBOutlet var numLable: UILabel!
    @IBOutlet var thumbnailimageView: UIImageView!

}

//
//  contentTableViewCell.swift
//  2 section table view
//
//  Created by Hydee Chen on 2023/9/19.
//

import UIKit

class contentTableViewCell: UITableViewCell {
    
    //設定label的outlet以便顯示文字
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

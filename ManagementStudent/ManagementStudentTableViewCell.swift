//
//  ManagementStudentTableViewCell.swift
//  ManagementStudent
//
//  Created by Hien on 5/10/17.
//  Copyright © 2017 Hien. All rights reserved.
//

import UIKit

class ManagementStudentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lb_Name: UILabel!
    @IBOutlet weak var lb_Age: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

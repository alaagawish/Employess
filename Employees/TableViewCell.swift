//
//  TableViewCell.swift
//  Employees
//
//  Created by Alaa on 21/05/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var employeeName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

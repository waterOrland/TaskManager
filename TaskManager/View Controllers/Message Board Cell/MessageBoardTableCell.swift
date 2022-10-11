//
//  MessageBoardTableCell.swift
//  TaskManager
//
//  Created by Orland Tompkins on 10/5/22.
//

import UIKit

class MessageBoardTableCell: UITableViewCell {
    static let identifier = "MessageBoardTableCell"
    
    @IBOutlet var messageLabel: UILabel! // line = 0 to resize
    @IBOutlet var timeStampLabel: UILabel!
    @IBOutlet var creatorLabel: UILabel!
}

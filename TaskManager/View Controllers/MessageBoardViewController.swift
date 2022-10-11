//
//  MessageBoardViewController.swift
//  TaskManager
//
//  Created by Orland Tompkins.
//

import UIKit

class MessageBoardViewController: UITableViewController {
    private enum Message {
        case text(userID: String, content: String, date: Date)
    }
    private var msgBoard = [Message]()
    private lazy var timeConverter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:MM"
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("msgBrd: \(msgBoard.count)")
    }
    
    // MARK: - Message Handler
    @IBAction func addButton(_ sender: UIButton) {
        messageHandler()
    }
    
    private func messageHandler() {
        let alert = UIAlertController(title: nil, message: "New Message", preferredStyle: .alert)
        alert.addTextField { txtField in
            txtField.placeholder = "Enter Message"
        }
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { _ in
            guard let msgTxtField = alert.textFields else { return }
            if let content = msgTxtField[0].text {
                let newMsg = Message.text(userID: "USER", content: content, date: Date())
                self.msgBoard.append(newMsg)
                self.tableView.reloadData()
            }
        }))
        present(alert, animated: true)
    }
    
    // MARK: - TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msgBoard.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MessageBoardTableCell.identifier, for: indexPath) as? MessageBoardTableCell else {
            fatalError("Unexpected Index Path")
        }
        cellConfig(cell, at: indexPath)
        return cell
    }
    
    private func cellConfig(_ cell: MessageBoardTableCell, at indexPath: IndexPath) {
        // labels as associated values?
        switch msgBoard[indexPath.row] {
            case let .text(userID: id, content: content, date: date):
                cell.messageLabel.text = content
                cell.timeStampLabel.text = timeConverter.string(from: date)
                cell.creatorLabel.text = id
        }
    }
}

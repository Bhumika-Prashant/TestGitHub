//
//  ViewController.swift
//  TableViewSwipeable
//
//  Created by Bhumika Hirapara on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var appleProducts = ["iPhone", "iPad", "iPod", "iMac", "iWatch", "iTV"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = appleProducts[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
//       UIContextualAction -> an action to display when the user swipes table row
        let edit = UIContextualAction(style: .normal, title: "Edit") { _, _, _ in
            print("Edit button tapped.")
        }
        let delete = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            print("Delete button tapped.")
        }
        let swipeActionsConfigurations = UISwipeActionsConfiguration(actions: [delete, edit])
        return swipeActionsConfigurations
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let more = UIContextualAction(style: .normal, title: "More") { _, _, _ in
            print("More button tapped.")
        }
        more.backgroundColor = .systemBlue
        let swipeActionsConfigurations = UISwipeActionsConfiguration(actions: [more])
        return swipeActionsConfigurations
    }
}

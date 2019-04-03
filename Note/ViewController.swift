//
//  ViewController.swift
//  Note
//
//  Created by Mohsen Abdollahi on 4/3/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    var name = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButton(_ sender: UIBarButtonItem) {
        
        let alert  = UIAlertController(title: "Add New Title", message: "You Can Add a Name For Your Title", preferredStyle: .alert)
        alert.addTextField { (textFiled: UITextField) -> Void in
        }
        let saveAction = UIAlertAction(title: "Save", style: .default) { (action: UIAlertAction) -> Void in
            let textField = alert.textFields!.first
            self.name.append(textField!.text!)
            self.tableView.reloadData()
        }
        alert.addAction(saveAction)
        present(alert, animated: true, completion: nil)
        
 
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = name[indexPath.row]
        return cell
    }
    
    
    
    
    
    
    
    
    
}


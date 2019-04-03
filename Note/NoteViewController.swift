//
//  NoteViewController.swift
//  Note
//
//  Created by Mohsen Abdollahi on 4/3/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = name[myIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

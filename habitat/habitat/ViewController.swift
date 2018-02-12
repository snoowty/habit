//
//  ViewController.swift
//  habitat
//
//  Created by Takahiro Yasuda on 2018/02/09.
//  Copyright © 2018年 Takahiro Yasuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! ViewController2
        secondViewController.text1 = textField.text
    }
    
}


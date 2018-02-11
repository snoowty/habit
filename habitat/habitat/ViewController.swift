//
//  ViewController.swift
//  habitat
//
//  Created by Takahiro Yasuda on 2018/02/09.
//  Copyright © 2018年 Takahiro Yasuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var habit1: UITextField!
    @IBOutlet weak var habit2: UITextField!
    @IBOutlet weak var habit3: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        let viewController2 = segue.destination as! ViewController2
        viewController2.text1 = habit1.text
        viewController2.text2 = habit2.text
        viewController2.text3 = habit3.text
    }
    
}


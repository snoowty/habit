//
//  ViewController2.swift
//  habitat
//
//  Created by Takahiro Yasuda on 2018/02/12.
//  Copyright © 2018年 Takahiro Yasuda. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label1: UILabel!
    var text1: String?
    
    @IBOutlet weak var label2: UILabel!
    var text2: String?
    
    @IBOutlet weak var label3: UILabel!
    var text3: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = text1
        label2.text = text2
        label3.text = text3
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

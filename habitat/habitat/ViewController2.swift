//
//  ViewController2.swift
//  habitat
//
//  Created by Takahiro Yasuda on 2018/02/12.
//  Copyright © 2018年 Takahiro Yasuda. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {


    
    @IBOutlet weak var Label: UILabel!
    var text1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = text1
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

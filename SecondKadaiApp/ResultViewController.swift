//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by Keiichi Funatsuki on 2018/04/24.
//  Copyright © 2018年 keiichi.funatsuki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    

    @IBOutlet weak var label: UILabel!
    
    //１ページ目からtextを受け取るための受け皿。
    
    var textFieldString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = textFieldString

        label.text = "こんにちは、\(name) さん"
        


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

//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Keiichi Funatsuki on 2018/04/23.
//  Copyright © 2018年 keiichi.funatsuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var textField: UITextField!
    
    var textFieldString = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //ここからは１ページ目と２ページ目をつなぐ操作らしいけど具体的な意味はわからない。
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let resultViewController : ResultViewController = segue.destination as! ResultViewController
       
        //TextFieldに書かれた内容を「textFieldString」として定義
        textFieldString = textField.text!
        
        //2ページ目にTextFieldに入力された内容を引き渡す。テキストフィールドに入力された内容はtextField.text!。　２ページ目でいうtextfieldstringに代入
        
        resultViewController.textFieldString = textField.text!
        
        
        //これをやらないとテキストフィールドに文字が入ったままになる。
        textField.text = ""
        

    }
    
 
    //１ページ目に戻ってくるための関数らしい
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
    
    
}


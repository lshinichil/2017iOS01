//
//  BornViewController.swift
//  SchooPeperShow
//
//  Created by 井元進一 on 2017/12/30.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit

class BornViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        
        
        
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapButton(_ sender: Any) {
        
        let alert = UIAlertController(
            title: "人生の選択",
            message: "桃太郎を育てますか？",
            preferredStyle: UIAlertControllerStyle.alert)
        //はいボタンを作る
        let yesButton = UIAlertAction(
            title: "はい",
            style: .default,
            handler: {(action) -> Void in
        self.performSegue(withIdentifier: "桃太郎画面へ", sender: nil)
        
        })
        //いいえボタンを作る
        let noButton = UIAlertAction(
            title: "いいえ",
            style: .default,
            handler: {(action) -> Void in
                
                self.performSegue(withIdentifier: "ゲームオーバー", sender: nil)
        })
        
        
        //表示する
        alert.addAction(yesButton)
        alert.addAction(noButton)
        
        //いいえボタンを作る
        //alertを表示する
        self.present(alert,animated: true,completion: nil)
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

//
//  momoViewController.swift
//  SchooPeperShow
//
//  Created by 井元進一 on 2017/12/30.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit

class momoViewController: UIViewController {

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
            message: "何をしますか？",
            preferredStyle:UIAlertControllerStyle.actionSheet)
        
       //はいボタンを作る
        let taijiButton = UIAlertAction(
            title: "鬼退治をする",
            style: .default,
            handler: {(action) -> Void in
                self.performSegue(withIdentifier: "鬼退治", sender: nil)
        })
        
        let furyouButton = UIAlertAction(
            title: "不良になる",
            style: .default,
            handler:{(action) -> Void in
                self.performSegue(withIdentifier: "不良", sender: nil)
        })
        let senseiButton = UIAlertAction(
            title: "アプリの先生になる",
            style: .default,
            handler:{(action) -> Void in
                self.performSegue(withIdentifier: "アプリ開発", sender: nil)
        })
                
        alert.addAction(taijiButton)
        alert.addAction(furyouButton)
        alert.addAction(senseiButton)
        
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

//
//  ViewController.swift
//  omikuji
//
//  Created by 井元進一 on 2017/12/29.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var luckyLabel: UILabel!
    @IBOutlet weak var luckyImage: UIImageView!
    //一番最初どうする？
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //ラベルを隠す
        self.luckyLabel.isHidden = true
        self.luckyImage.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapButton(_ sender: Any) {
     //ラベルを表示する
        self.luckyLabel.isHidden = false
        self.luckyImage.isHidden = false

        //乱数を教えてよ
        let random = arc4random()%5
        
        
        //randomが0だったら大吉
        //randomが1だったら中吉
        //randomが2だったら小吉
        //randomが3だったら凶
        //randomが4だったら大凶
        if random == 0 {
            self.luckyLabel.text = "大吉"
            self.luckyImage.image = UIImage(named:"201")
            
        }
        else if random == 1 {
            self.luckyLabel.text = "中吉"
            self.luckyImage.image = UIImage(named:"202")

        }
        else if random == 2 {
            self.luckyLabel.text = "小吉"
            self.luckyImage.image = UIImage(named:"203")

        }
        else if random == 3 {
            self.luckyLabel.text = "凶"
            self.luckyImage.image = UIImage(named:"204")

        }
        else {
            self.luckyLabel.text = "大凶"
            self.luckyImage.image = UIImage(named:"205")
        }
    }
}

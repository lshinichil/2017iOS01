//
//  ViewController.swift
//  kokuhaku
//
//  Created by 井元進一 on 2017/12/28.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var loveImage: UIImageView!
    //一番最初どうする？
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //ラベルを隠す、画像を隠す
        self.loveLabel.isHidden = true
        self.loveImage.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tapButton(_ sender: Any) {
        //ラベルを表示する　画像を表示する
        self.loveLabel.isHidden = false
        self.loveImage.isHidden = false
    }
}


//
//  ViewController.swift
//  SchoooPetApp
//
//  Created by 井元進一 on 2017/12/30.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var wanwanLabel: UILabel!
    
    //一番最初どうする？
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.wanwanLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        //鼻をタッチしたらどうする？
    @IBAction func tapNose(_ sender: Any) {
        //犬の画像を変える
        self.dogImageView.image = UIImage(named:"sigh")
        
    }
    
    @IBAction func swipeHead(_ sender: Any) {
        self.dogImageView.image = UIImage(named:"smile")
    }
    
    @IBAction func tapStomach(_ sender: Any) {
        //wanwanlabelを表示する
        self.wanwanLabel.isHidden = false
        
        //右にアニメーションしてね
        UIView.animate(withDuration: 1.0, animations: {
            //x座標を変える
            self.wanwanLabel.frame.origin.x = 300
        }, completion: nil)
        
    }
    @IBAction func tapSippo(_ sender: Any) {
         self.dogImageView.image = UIImage(named:"angry")
    }
    
    
}


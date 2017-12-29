//
//  ViewController.swift
//  SchooClockApp
//
//  Created by 井元進一 on 2017/12/30.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clockLabel: UILabel!
    var timer: Timer!
    //一番最初どうする？
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //iPhone今の時間を教えて
        let now = Date()
        //翻訳してくれる人を用意
        let formatter = DateFormatter()
        //翻訳形式を決める
        formatter.dateFormat = "yyyy/MM/dd hh:mm:ss"
        //翻訳してよ
        let nowString = formatter.string(from: now)
        //ラベルに入れる
        self.clockLabel.text = nowString
        
        
        //タイマーのセット
        self.timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector:#selector(self.updateClock),
            userInfo: nil,
            repeats: true)
        
/*課題でのタイマーですが、バージョンの違いで
         タイマーの使用が変わっていたので変更を加えました。*/
        /*
        self.timer =
           Timer.scheduledTimer(
           timeInterval: 1.0,
           target: self,
           selector: "updateClock",
           userInfo: nil,
           repeats: true
       )
 */
    }
    //updateClock呼ばれたらどうする？
    @objc func updateClock() {
        //iPhone今の時間を教えて
        let now = Date()
        //翻訳してくれる人を用意
        let formatter = DateFormatter()
        //翻訳形式を決める
        formatter.dateFormat = "yyyy/MM/dd hh:mm:ss"
        //翻訳してよ
        let nowString = formatter.string(from: now)
        //ラベルに入れる
        self.clockLabel.text = nowString
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapStartButton(_ sender: Any) {
        self.timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector:#selector(self.updateClock),
            userInfo: nil,
            repeats: true)
    }
    @IBAction func tapStopButton(_ sender: Any) {
        self.timer.invalidate()
    }
    
}


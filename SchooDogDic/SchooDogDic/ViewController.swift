//
//  ViewController.swift
//  SchooDogDic
//
//  Created by 井元進一 on 2017/12/30.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit
//tabeleViewと相談する準備その１
class ViewController:  UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var dogTableView: UITableView!
//データの部品配列を用意する
    var dogData: [String] = [
    "柴犬",
    "ゴールデンレトリバー",
    "秋田犬",
    "ウェルシュテリア",
    "紀州犬",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //tabeleViewと相談する準備その２
        self.dogTableView.delegate = self
        self.dogTableView.dataSource = self
    }
    //セクションの数どうする？
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //セルの数どうする？
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    //各行のセルの中身どうする？
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dogTableView.dequeueReusableCell(withIdentifier: "orangeCell", for: indexPath)
        cell.textLabel?.text = self.dogData[indexPath.row]
        
        return cell
    }
    //各行のセルを選択をした時にどうする？
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Web画面を呼んでくる
        //正体を保証してあげる
        let next = self.storyboard?.instantiateViewController(withIdentifier: "Web画面") as! WebViewController
        //データを渡してあげる
        next.data = self.dogData[indexPath.row]
        //表示する
        show(next,sender: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


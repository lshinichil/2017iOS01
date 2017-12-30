//
//  WebViewController.swift
//  SchooDogDic
//
//  Created by 井元進一 on 2017/12/31.
//  Copyright © 2017年 井元進一. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var detailWebView: UIWebView!
    //データをもらう部品
    var data: String!
    //一番最初どうする？
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
        // URLを指定する
        let urlString = "https://ja.wikipedia.org/wiki/\(self.data.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)"
        // 指定したURLのページをdetailWebViewに表示する
        let url = URL(string: urlString)
        //上のURLでリクエストする
        let request = URLRequest(url: url!)

        
        
        
      self.detailWebView.loadRequest(request)
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

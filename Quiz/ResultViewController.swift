//
//  ResultViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!
    
    var comment:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        resultLabel.text = String("結果は\(correctAnswer)問正解！")
        
        
        if correctAnswer == 0{
            comment = "まだまだ！"
            commentLabel.textColor = UIColor.blue
        }else if correctAnswer == 4{
            comment = "満点！"
            commentLabel.textColor = UIColor.red
        }else{
            comment = "上出来！"
        }
        commentLabel.text = String(comment)
    }
    
    
}

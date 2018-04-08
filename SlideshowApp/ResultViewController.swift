//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by USER on 2018/04/05.
//  Copyright © 2018年 shuuhei-sutou. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var frame: UIImageView!
    
    var image = UIImage()
    
    var transScale = CGAffineTransform()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        frame.image = image
        
        transScale = CGAffineTransform(scaleX: 1.9, y: 1.9)
        
        frame.transform = transScale

        // Do any additional setup after loading the view.
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

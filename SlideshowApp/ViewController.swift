//
//  ViewController.swift
//  SlideshowApp
//
//  Created by USER on 2018/04/04.
//  Copyright © 2018年 shuuhei-sutou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var Prev: UIButton!
    @IBOutlet weak var Auto: UIButton!
    
    @IBAction func onTapImage(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func susumu(_ sender: Any) {
        dispImageNo += 1
        
        displayImage()
    }
    @IBAction func modoru(_ sender: Any) {
        dispImageNo -= 1
        
        displayImage()
    }
    
    var dispImageNo = 0
    var timer: Timer!
    var button = 0
    
    func displayImage(){
        let imageNameArray=["cat.jpeg", "cat2.jpeg", "cat3.jpeg", "cat4.jpeg"]
        
        if dispImageNo < 0{
            dispImageNo = 3
        }
        
        if dispImageNo > 3{
            dispImageNo = 0
        }
        
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
    }
    
    @objc func updateTimer(timer: Timer) {
        print("onTimer")
        dispImageNo += 1
        displayImage()
    }
    
    @IBAction func saisei(_ sender: Any) {
        if(button == 0){
            Next.isEnabled = false
            Prev.isEnabled = false
            Auto.setTitle("停止", for: .normal)
            button += 1
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
        }else{
            Next.isEnabled = true
            Prev.isEnabled = true
            Auto.setTitle("再生", for: .normal)
            button -= 1
            self.timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "cat.jpeg")
        
        imageView.image = image
        
    }
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?){
        let resultViewController:ResultViewController = seque.destination as! ResultViewController
        
        resultViewController.imageView = self.imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


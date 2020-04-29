//
//  ViewController.swift
//  CustomButton
//
//  Created by Banyar on 8/4/20.
//  Copyright © 2020 BNH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var notiButton: NotificationButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusCount(_ sender: UIButton){
        if self.notiButton.notiCountValue == nil{
            self.notiButton.notiCountValue = 1
        }else{
            self.notiButton.notiCountValue! += 1
        }
    }
    
    @IBAction func minusCount(_ sender: UIButton){
        if self.notiButton.notiCountValue != nil{
            self.notiButton.notiCountValue! -= 1
            
            if self.notiButton.notiCountValue! <= 0 {
                self.notiButton.notiCountValue = nil
            }
        }
        
    }
    
}


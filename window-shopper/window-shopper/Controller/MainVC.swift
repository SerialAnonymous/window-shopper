//
//  ViewController.swift
//  window-shopper
//
//  Created by Nayan Jariwala on 21/03/18.
//  Copyright © 2018 Nayan Jariwala. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wagetxt: CurrencyTxtField!
    @IBOutlet weak var pricetxt: CurrencyTxtField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60 ))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
    }

    @objc func calculate(){
            print("i am here")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


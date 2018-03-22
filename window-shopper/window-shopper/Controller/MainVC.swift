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
    @IBOutlet weak var tothourslbl: UILabel!
    @IBOutlet weak var hourslbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60 ))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        
        tothourslbl.isHidden = true
        hourslbl.isHidden = true
        
    }

    @objc func calculate(){
        if let wagetxt1 = wagetxt.text, let pricetxt1 = pricetxt.text{
            if let wage1 = Double(wagetxt1), let price1 = Double(pricetxt1){
                view.endEditing(true)
                tothourslbl.isHidden = false
                hourslbl.isHidden = false
                tothourslbl.text = "\(wage.getHours(forwage:wage1, getPrice:price1))"
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clearcalcPressed(_ sender: Any) {
        tothourslbl.isHidden = true
        hourslbl.isHidden = true
        wagetxt.text = ""
        pricetxt.text = ""
        
    }
}


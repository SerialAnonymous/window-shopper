//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Nayan Jariwala on 21/03/18.
//  Copyright © 2018 Nayan Jariwala. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 30
        let currencylbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencylbl.backgroundColor = #colorLiteral(red: 0.7863261421, green: 0.7863261421, blue: 0.7863261421, alpha: 0.7485552226)
        currencylbl.textAlignment = .center
        currencylbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencylbl.layer.cornerRadius = 5
        currencylbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencylbl.text = formatter.currencySymbol
        addSubview(currencylbl)
    }
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9803921569, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}

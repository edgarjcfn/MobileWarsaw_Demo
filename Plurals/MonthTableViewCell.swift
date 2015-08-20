//
//  MonthTableViewCell.swift
//  Plurals
//
//  Created by Edgar Neto on 20/08/15.
//  Copyright (c) 2015 Edgar Neto. All rights reserved.
//

import Foundation
import UIKit

protocol MonthTableViewCellDelegate {
    func monthChanged(month:String, active:Bool)
}

class MonthTableViewCell : UITableViewCell {

    var delegate:MonthTableViewCellDelegate!

    @IBOutlet weak var monthNameLabel: UILabel!
    @IBOutlet weak var activeSwitch: UISwitch!

    @IBAction func switchChanged(sender: AnyObject) {

        if (delegate != nil) {
            let toggle = sender as! UISwitch
            delegate.monthChanged(monthNameLabel.text!, active: toggle.on)
        }
    }

    
}
//
//  ViewController.swift
//  Plurals
//
//  Created by Edgar Neto on 20/08/15.
//  Copyright (c) 2015 Edgar Neto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MonthTableViewCellDelegate {

    var selected: Int = 0

    @IBOutlet weak var mainLabel: UILabel!

    override func viewDidAppear(animated: Bool) {
        updateLabelText()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "EmbedTableView") {
            if let tableView = segue.destinationViewController as? MonthsTableViewController {
                tableView.delegate = self
            }
        }
    }

    //MARK: -MonthtableViewCellDelegate 
    func monthChanged(month:String, active:Bool) {
        if (active) {
            selected++
        } else {
            selected--
        }

        updateLabelText()
    }

    //MARK: -Private
    func updateLabelText() {
        // Without stringsdict
//        let localised = NSBundle.mainBundle().localizedStringForKey("phrase", value: "phrase", table: "plurals")
//        let formatted = NSString(format: localised, selected)

        // With stringsdict
        let formatted = NSString.localizedStringWithFormat(NSLocalizedString("phrase", tableName: "plurals", comment: ""), selected)
        mainLabel.text = formatted as String
    }



}


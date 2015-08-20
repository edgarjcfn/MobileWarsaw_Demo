//
//  MonthsTableViewController.swift
//  Plurals
//
//  Created by Edgar Neto on 20/08/15.
//  Copyright (c) 2015 Edgar Neto. All rights reserved.
//

import Foundation
import UIKit

class MonthsTableViewController : UITableViewController {

    let data = NSDateFormatter().monthSymbols
//    let data = ["January", "February"]

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        if let month = data[indexPath.row] as? String,
           let label = cell.contentView.viewWithTag(10) as? UILabel {

            label.text = month
        }
        return cell
    }

}
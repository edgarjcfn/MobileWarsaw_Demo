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
    var delegate: MonthTableViewCellDelegate!

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! MonthTableViewCell
        if let month = data[indexPath.row] as? String {
            cell.monthNameLabel.text = month
            cell.delegate = self.delegate
        }

        return cell
    }
}
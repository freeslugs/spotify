//
//  TableViewController.swift
//  SpotifyHackathon
//
//  Created by Gilad Penn on 9/6/14.
//  Copyright (c) 2014 512Tech. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    let tableData = ["One","Two","Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return tableData.count
    }
    
    func tableView(tableView: UITableView!,
        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }
    
    
}
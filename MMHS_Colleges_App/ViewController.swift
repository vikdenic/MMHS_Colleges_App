//
//  ViewController.swift
//  MMHS_Colleges_App
//
//  Created by Vik Denic on 7/16/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var myTableView: UITableView
    //create an array to hold College object references
    var collegesArray = [College]()
                            
    override func viewDidLoad() {
        super.viewDidLoad()

        //create custom College objects using the convienence constructor we wrote in the College.swift file
        var kansas = College(name: "University of Kansas", logoImage: UIImage(named: "jayhawks_image"), color: UIColor.blueColor(), numberOfStudents: 30000)
        var syracuse = College(name: "Syracuse University", logoImage: UIImage(named: "orangemen_image"), color: UIColor.orangeColor(), numberOfStudents: 20000)
        var dayton = College(name: "University of Dayton", logoImage: UIImage(named: "flyers_image"), color: UIColor.blueColor(), numberOfStudents: 10000)

        //add these custom objects to the array
        collegesArray += [kansas, syracuse, dayton]
    }

    //UITableView delegate methods

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return collegesArray.count
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell") as UITableViewCell

        cell.textLabel.text = collegesArray[indexPath.row].name

        cell.detailTextLabel.text = "Population: \(collegesArray[indexPath.row].numberOfStudents)"

        return cell
    }

    //pass the object at the selected cell to the next ViewController
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        var selectedIndexPath = myTableView.indexPathForSelectedRow()
        var detailVC = segue.destinationViewController as DetailViewController
        detailVC.college = self.collegesArray[selectedIndexPath.row]
    }

}


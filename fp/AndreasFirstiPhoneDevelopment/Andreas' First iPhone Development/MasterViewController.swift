//
//  MasterViewController.swift
//  Andreas' First iPhone Development
//
//  Created by Andreas on 12/7/15.
//  Copyright © 2015 Andreas. All rights reserved.
//

import UIKit
//global variables

var objects:[String] = [String]() //this is how one declares a string array in swift
var currentIndex:Int = 0 //this variable will be used to keep track on what current index in the array that we are working with
var masterView:MasterViewController? //the ? means that this variable can possible be null, or in swift, it means that it is nil
var detailViewController:DetailViewController?

let kNotes:String = "notes" //this is what we are going to use to save data to persistent storage
let BLANK_NOTE:String = "(New Note)" //This is the string that is going to show up when we make a new note

class MasterViewController: UITableViewController {




    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        load()
        self.navigationItem.leftBarButtonItem = self.editButtonItem()

        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
    }

    override func viewWillAppear(animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
        save()
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(sender: AnyObject) {
        objects.insert(BLANK_NOTE, atIndex: 0)
        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                currentIndex = indexPath.row
                let object = objects[indexPath.row]
                detailViewController?.detailItem = object
                detailViewController?.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                detailViewController?.navigationItem.leftItemsSupplementBackButton = true
                //making sure it can be empty
                //right after detailViewController, I could have used an exclamation point but they should only be used if you know that you want the program to fail. So if the array is nil, then the app will fail
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        let object = objects[indexPath.row]
        cell.textLabel!.text = object
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            objects.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    func save(){ //save what you write in this note-taking application
        NSUserDefaults.standardUserDefaults().setObject(objects, forKey: kNotes) //this won't actually instantly save what is in memory onto disk
        //before the next line, memory to store onto disk at the operating system's convenience.
        NSUserDefaults.standardUserDefaults().synchronize() //this will instantly save what is in memory and save without one having to wait for the user to press the "home" button.
    }
    
    func load() { //this will past notes
        if let loadedData = NSUserDefaults.standardUserDefaults().arrayForKey(kNotes) as? [String] {
            objects = loadedData
        }
    }
}


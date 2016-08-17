//
//  DetailViewController.swift
//  Andreas' First iPhone Development
//
//  Andreas Bach Landrebe
//  Computer Science 220
//  Final Project
//  To run the program, you must run the latest version of Xcode on the Mac OS X and then click on the run button on the top left and an emulation will load.




//  Created by Andreas on 12/7/15.
//  Copyright © 2015 Andreas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UITextView!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        //if there are no objects in the objects array: then objects.count = 0,
        if objects.count == 0 {
            return
        }
        if let label = self.detailDescriptionLabel {
            label.text = objects[currentIndex]
            if label.text == BLANK_NOTE {
                label.text = ""
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        detailViewController = self //every time there is a new view, it will reset
        detailDescriptionLabel.becomeFirstResponder() //first responder to edit events. This invokes to show the keyboard automatically.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


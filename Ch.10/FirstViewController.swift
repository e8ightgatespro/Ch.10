//
//  FirstViewController.swift
//  Ch.10
//
//  Created by Voss, Garrett on 4/9/18.
//  Copyright © 2018 Voss, Garrett. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() { // initial display of the scene only. Won't re-execute unless the view is unloaded from memory
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) { // gets called when the scene Will Reappear to the user
        super.viewWillAppear(animated)
        lblFirstViewLabel.text = "\(aNumber)"
        aNumber = aNumber + 2
        // Set up listeners here
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // do any clean up here that you want to do before the scenee is not showed to the user
        // get rid of listeners here
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var lblFirstViewLabel: UILabel!
    var aNumber:Int = 1
    
    // The keyboard gets in the way in IOS
    // If you use the soft keyboard and have a text view on the bottom of the scene the keyboard will go right over the control.
    // you need to have a keyboard listener , moves display up so keyboard doesnt block stuff. You move the screen with a scroll view.
    // Must embbed controls in scroll view to move conytrols programmitaclly when the keyboard appears. 
    

}


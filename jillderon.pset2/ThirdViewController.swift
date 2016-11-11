//
//  ThirdViewController.swift
//  jillderon.pset2
//
//  Created by Jill de Ron on 07-11-16.
//  Copyright © 2016 Jill de Ron. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var story: Story!
    var storyuser: String?
    @IBOutlet weak var textField: UITextView!

    @IBOutlet weak var StartAgain: UIButton!

    @IBAction func actionClear(_ sender: Any) {
        if StartAgain.isSelected == true {
            story.clear()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        textField.text = storyuser
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

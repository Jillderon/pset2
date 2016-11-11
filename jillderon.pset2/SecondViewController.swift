//
//  SecondViewController.swift
//  jillderon.pset2
//
//  Created by Jill de Ron on 07-11-16.
//  Copyright © 2016 Jill de Ron. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var story: Story!
    
    @IBOutlet weak var dataInputField: UITextField!
    @IBOutlet weak var wordsLeft: UILabel!
    @IBOutlet weak var OK: UIButton!

    
    @IBAction func OKaction(_ sender: Any) {
        if dataInputField.placeholder != "" {
            story.fillInPlaceholder(word: dataInputField.text!)
            dataInputField.text = ""
            dataInputField.placeholder = story.getNextPlaceholder()
            
            if story.getPlaceholderRemainingCount() != 0 {
                wordsLeft.text = String(story.getPlaceholderRemainingCount()) + "words left"
            }
            else {
                wordsLeft.text = "Done!"
            }
        }
        else {
            return
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        let file = "madlib2_university"
        var myString = String()
        if let dir = Bundle.main.path(forResource: file, ofType: "txt") {
            do {
                myString = try String(contentsOf: URL(string: "file://\(dir)")!, encoding: String.Encoding.utf8)
            }
            catch {
                print(error)
            }
        }
        
        story = Story(stream: myString)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdVC = segue.destination as? ThirdViewController {
//            code
        }
        
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

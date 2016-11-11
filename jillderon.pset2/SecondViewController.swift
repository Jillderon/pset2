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
    @IBOutlet weak var fillIn: UILabel!
    @IBOutlet weak var nextWord: UIButton!
    @IBOutlet weak var OK: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStory()
        OK.isHidden = true
        
    }
    
    func loadStory() {
        if let dir = Bundle.main.path(forResource: "madlib2_university", ofType: "txt") {
            do {
                let myString = try String(contentsOf: URL(string: "file://\(dir)")!, encoding: String.Encoding.utf8)
                story = Story(stream: myString)
            }
            catch {
                print(error)
            }
        }
    }


    @IBAction func actionNextword(_ sender: UIButton) {
        if story.isFilledIn() == false {
            story.fillInPlaceholder(word: dataInputField.text!)
            
        }
        
        print(story.toString())
    }
    
   
//
//            if story.getPlaceholderRemainingCount() != 0 {
//                wordsLeft.text = String(story.getPlaceholderRemainingCount()) + "words left"
//                OK.isHidden = true
//            }
//            else {
//                wordsLeft.text = "Done! Click on OK!"
//                nextWord.isHidden = true
//                OK.isHidden = false
//            }
//
//    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let thirdVC = segue.destination as? ThirdViewController {
////            code
//        }
//        
//    }

 
    
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

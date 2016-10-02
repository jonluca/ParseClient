//
//  ChatViewController.swift
//  ParseClient
//
//  Created by JonLuca De Caro on 10/1/16.
//  Copyright © 2016 JonLuca De Caro. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var messageText: UITextField!
    @IBAction func send(_ sender: AnyObject) {
        var message = PFObject(className:"Message_fbuJuly2016")
        message["text"] = messageText.text
        gameScore.saveInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if (success) {
                // The object has been saved.
            } else {
                // There was a problem, check error.description
            }
        }


    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

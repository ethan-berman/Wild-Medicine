//
//  DecisionController.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/20/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import UIKit

class DecisionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var moi: UITextField!
    @IBOutlet weak var cc: UITextField!
    @IBOutlet weak var age: UITextField!
    var pat = Patient()
    
    @IBAction func stabilize(_ sender: UIButton) {
        pat.spinal = true
        if let someText = age.text{
            if let someInt = Int(someText){
                pat.age = someInt
            }
        }
        if let someText = cc.text{
            pat.cc = someText
        }
        if let someText = moi.text{
            pat.moi = someText
        }
    }
    @IBAction func release(_ sender: UIButton) {
        pat.spinal = false
        if let someText = age.text{
            if let someInt = Int(someText){
                pat.age = someInt
            }
        }
        if let someText = cc.text{
            pat.cc = someText
        }
        if let someText = moi.text{
            pat.moi = someText
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextController = segue.destination as! ExposeController
        nextController.pat = pat
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

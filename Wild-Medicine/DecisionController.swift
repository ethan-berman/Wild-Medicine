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
    var pat = Patient()
    
    @IBAction func stabilize(_ sender: UIButton) {
        pat.spinal = true
    }
    @IBAction func release(_ sender: UIButton) {
        pat.spinal = false
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

//
//  assessmentController.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/17/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import UIKit

class AssessmentController: UIViewController {
    var myString = String()
    var pat = Patient()
    @IBOutlet weak var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(myString)
        print(pat.spinal)
        output.text = pat.lor
        pat.printAll()
        pat.lookup()
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

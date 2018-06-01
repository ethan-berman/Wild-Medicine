//
//  sampleController.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/17/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import UIKit

class SampleController: UIViewController {
    var lorText = String()
    var pat = Patient()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var symptoms: UITextField!
    @IBOutlet weak var allergies: UITextField!
    @IBOutlet weak var medications: UITextField!
    @IBOutlet weak var pertinent: UITextField!
    @IBOutlet weak var last: UITextField!
    @IBOutlet weak var events: UITextField!
    @IBAction func submit(_ sender: UIButton) {
        pat.symptoms = symptoms.text!
        pat.allergies = allergies.text!
        pat.medication = medications.text!
        pat.pert = pertinent.text!
        pat.last = last.text!
        pat.events = events.text!
        print(events.text!)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextController = segue.destination as! AssessmentController
        nextController.pat = pat
        nextController.pat.findings = pat.assess()
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

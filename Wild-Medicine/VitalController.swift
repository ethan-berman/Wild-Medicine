//
//  VitalController.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/20/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import UIKit

class VitalController: UIViewController {
    var pat = Patient()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var lor: UITextField!
    @IBOutlet weak var hr: UITextField!
    @IBOutlet weak var rr: UITextField!
    @IBOutlet weak var pupil: UITextField!
    @IBOutlet weak var sctm: UITextField!
    @IBOutlet weak var temp: UITextField!
    @IBOutlet weak var syst: UITextField!
    @IBOutlet weak var dias: UITextField!
    
    @IBAction func submit(_ sender: UIButton!) {
        pat.lor = lor.text!
        pat.hr = Int(hr.text!)!
        pat.rr = Int(rr.text!)!
        pat.p = pupil.text!
        pat.sctm = sctm.text!
        pat.t = Double(temp.text!)!
        pat.syst = Int(syst.text!)!
        pat.dias = Int(dias.text!)!
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextController = segue.destination as! SampleController
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

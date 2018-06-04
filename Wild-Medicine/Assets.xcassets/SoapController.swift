//
//  SoapController.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 6/4/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import UIKit
import MessageUI

class SoapController: UIViewController {
    var pat = Patient()
    var final = [Ailment]()
    var soapNote = String()
    
    @IBOutlet weak var soapDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var problemNames = ""
        var treatments = ""
        var evacPlans = ""
        for item in final{
            problemNames += item.name + " "
            treatments += item.treatment + " "
            evacPlans += item.evac + " "
        }
        treatments = treatments.replacingOccurrences(of: "%%", with: ",")
        treatments = treatments.replacingOccurrences(of: "@@", with: ".")
        evacPlans = evacPlans.replacingOccurrences(of: "%%", with: ",")
        evacPlans = evacPlans.replacingOccurrences(of: "%%", with: ",")

        soapNote = "I have a " + String(pat.age) + " year-old whose chief complaint is " + pat.cc + " The Moi is: " + pat.moi + ".  The patient is currently " + pat.lor + ".  Patient has " + pat.symptoms + ".  The patient's vital signs are: LOR: " + pat.lor + " HR: " + String(pat.hr) + " RR: " + String(pat.rr) + " SCTM: " + pat.sctm + " Based on the MOI we have reason to believe in a spinal injury: " + String(pat.spinal) + ".  We suspect the following problems: " + problemNames + "Our treatment includes: " + treatments + " And our evac plan is: " + evacPlans
        soapDisplay.text! = soapNote
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var email: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //used this from a website cited in sources consulted to send email
    @IBAction func sendEmail(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail(){
            let mail = MFMailComposeViewController()
            if let someText = email.text{
                mail.setToRecipients([someText])
            }
            mail.setMessageBody("<p>" + soapNote + "</p>", isHTML: true)
            present(mail, animated: true)
        }
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
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

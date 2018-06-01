//
//  assessmentController.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/17/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import UIKit

class AssessmentController: UIViewController {
    var pat = Patient()
    @IBOutlet weak var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pat.spinal)
        output.text = pat.symptoms
        pat.printAll()
        pat.lookup()
        print(pat.table)
        
        // Do any additional setup after loading the view.
    }
    let fuck = Ailment(name: "Decompensatory Shock")
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func printall(_ sender: UIButton) {
        //pat.printAll()
        compare(patient: pat, ailment: fuck)
    }
    
    func compare(patient: Patient, ailment: Ailment){
        let mirrorObject = Mirror(reflecting: pat)
        for (index, attr) in mirrorObject.children.enumerated(){
            if let propertyName = attr.label as String! {
                print("Attr \(index): \(propertyName) = \(attr.value)")
            }
        }
        
        let mirrorObject2 = Mirror(reflecting: ailment)
        for (index, attr) in mirrorObject2.children.enumerated(){
            if let propertyName = attr.label as String! {
                print("Attr \(index): \(propertyName) = \(attr.value)")
            }
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

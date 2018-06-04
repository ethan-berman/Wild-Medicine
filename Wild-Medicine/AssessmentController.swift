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
    var counter = 0
    var confirmed = [Ailment]()
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var symp: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pat.spinal)
        pat.printAll()
        for item in pat.findings!{
            let mirrorObject = Mirror(reflecting: item)
            for (index, attr) in mirrorObject.children.enumerated(){
               // view.adddChild(UILabel(text: attr))
            }
        }
        
        // Do any additional setup after loading the view.
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var showButton: UIButton!
    @IBAction func show(_ sender: UIButton) {
        if(pat.findings?.count != 0){
            name.text = pat.findings![counter].name
            desc.text = pat.findings![counter].description
            var sympText = ""
            for item in pat.findings![counter].symptoms{
                sympText += item
            }
            symp.text = sympText
        
        }
        
    }
    
    @IBAction func Accept(_ sender: UIButton) {
        confirmed.append(pat.findings![counter])
        counter += 1
        if(counter < (pat.findings?.count)!){
            show(showButton)
        }else{
            finish(finishButton)
        }
       
    }
    @IBAction func Reject(_ sender: UIButton) {
        counter += 1
        if(counter < (pat.findings?.count)!){
            show(showButton)
        }else{
            finish(finishButton)
        }
    }
    @IBOutlet weak var finishButton: UIButton!
    @IBAction func finish(_ sender: Any) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextController = segue.destination as! SoapController
        nextController.pat = pat
        nextController.final = confirmed
    }
    //    Deprecated
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
    //new approach: list out all of the findings for an ailment and have user determine if they are relevant or not
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

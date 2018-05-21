//
//  ViewController.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/14/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func newPatient(_ sender: UIButton) {
        print("new patient")
        //instantiate new patient
    }
    @IBAction func airway(_ sender: UIButton) {
        print("airway")
    }
    @IBAction func spineHold(_ sender: UIButton) {
        //update patients spine boolean
        //spinal = true
        print("spine hold")
    }
    @IBAction func spineRelease(_ sender: UIButton) {
        //spinal = false
    }
    //setters for patient vitals
    
    @IBAction func lor(_ sender: UITextField) {
        print(sender.text)
    }
    @IBAction func hr(_ sender: UITextField) {
        print(sender.text)
    }
    @IBAction func rr(_ sender: UITextField) {
    }
    @IBAction func p(_ sender: UITextField) {
    }
    @IBAction func skin(_ sender: UITextField) {
    }
    @IBAction func t(_ sender: UITextField) {
    }
    @IBAction func bp(_ sender: UITextField) {
    }
    @IBAction func symptoms(_ sender: UITextField) {
    }
    @IBAction func allergies(_ sender: UITextField) {
    }
    @IBAction func medications(_ sender: UITextField) {
    }
    @IBAction func pertinent(_ sender: UITextField) {
    }
    @IBAction func last(_ sender: UITextField) {
    }
    @IBAction func events(_ sender: UITextField) {
    }
    
    
    @IBAction func submit(_ sender: UIButton) {
        //calculate assessment and set textfield to it
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let assessment  = "spinal"
        label.text = assessment
        self.view.addSubview(label)
        print(assessment)
    }
    @IBOutlet weak var newPatient: UIButton!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


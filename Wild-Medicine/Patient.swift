//
//  Patient.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/15/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import Foundation
class Patient{
    var hr = Int()
    var rr = Int()
    var lor = String()
    var p = String()
    var t = Double()
    var syst = Int()
    var dias = Int()
    var sctm = String()
    var age = Int()
    var sex = Int() //0 male 1 female 2 other
    var moi = String()
    var cc = String()
    var symptoms = String()
    var allergies = String()
    var medication = String()
    var pert = String()
    var last = String()
    var events = String()
    var spinal = Bool()
    
    func printAll(){
        print("lor: " + lor)
        print("heart rate: " + String(hr))
        print("respiratory rate: " + String(rr))
        print("pupils: " + p)
        print("temperature: " + String(t))
        print("Blood pressure is: " + String(syst) + "over " + String(dias))
        print("Skin is: " + sctm)
        print("age: " + String(age))
        print("sex: " + String(sex))
        print("moi: " + moi)
        print("cheif complaint: " + cc)
        print("symptoms: " + symptoms)
        print("allergies: " + allergies)
        print("meds: " + medication)
        print("pertinent medical history: " + pert)
        print("last intake/out: " + last)
        print("feelings prior to events: " + events)
        print("Spinal Injury? " + String(spinal))
    }
}

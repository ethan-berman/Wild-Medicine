//
//  Patient.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/15/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import Foundation
import CSwiftV

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
//    Questions about musculoskeletal injuries still to be figured out.
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
    func redFlag()-> [String]{
//        compare vital signs to the normal vital ranges to see if there are major red flags
        var problems = [String]()
        if(lor != "A+Ox4"){
            problems.append("lor")
        }
        if(hr < 50 || hr > 100){
            problems.append("hr")
        }
        if(rr < 12 || rr > 20){
            problems.append("rr")
        }
        if(sctm != "pwd"){
            problems.append("sctm")
        }
        if(syst < 120 && dias < 80){
            problems.append("bp")
        }
        if(p != "PERRL"){
            problems.append("p")
        }
        if(t > 100.4){
            problems.append("t")
        }
        return problems
    }
    func assess() -> [Ailment]{
        let problems = redFlag()
        var possibilities = [Ailment]()
        if(problems.count == 0){
//            if no vital issues, then turn to sample results or findings from physical exam
//            perform keyword search here within the csv file, return possible matches for ailments
        }else{
            for item in problems{
//                perform basic redflag lookup, problems that are likely associated to specific changes
                if(item == "bp"){
                    let decompShock = Ailment(name: "Decompensatory Shock")
                    possibilities.append(decompShock)
                }
            }
//            sort through issues in vital signs and return potential ailments to furhter narrow later
        }
        return possibilities
    }
}

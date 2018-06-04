//
//  Ailment.swift
//  Wild-Medicine
//
//  Created by Ethan Berman on 5/21/18.
//  Copyright © 2018 Ethan Berman. All rights reserved.
//

import Foundation
class Ailment{
//    Ailment class takes in a name for an ailment, looks up all the relevant information in some master table
//    return this information in the form of an ailment object to check the conditions and treatments for it
    var name = String()
    var lor = String()
    var hr = String()
    var rr = String()
    var sctm = String()
    var bp = String()
    var p = String()
    var temp = String()
    var symptoms = [String]()
    var treatment = String()
    var evac = String()
    var description = String()
    init(name: String){
        let qualities = lookup(name: name)
        self.name = name
        self.lor = qualities[1]
        self.hr = qualities[2]
        self.rr = qualities[3]
        self.sctm = qualities[4]
        self.bp = qualities[5]
        self.p = qualities[6]
        self.temp = qualities[7]
        self.symptoms = qualities[8].components(separatedBy: "%%")
        self.treatment = qualities[9]
        self.evac = qualities[10]
        self.description = qualities[11]
    }
//    make two different constructors for an ailment, one can either know the name based on redflags, or
//    an ailment can be initialized with all information if found through a keyword lookup process.
//    this would make it more efficient because you wouldn't have to lookup a keyword then lookup the info for that ailment
    func lookup(name: String)->[String]{
        var output = [String]()
//        this function searches csv file by name to get more information about ailments to perform further comparisons
//        allows for information to be gathered to vet an ailment, and then provide assessment/treatment info
        guard let csvPath = Bundle.main.path(forResource: "pdata", ofType: "csv") else { return output}
        do {
            let csvData = try String(contentsOfFile: csvPath, encoding: String.Encoding.utf8)
            let rows = csvData.components(separatedBy: "\n")
            var table = [[String]]()
            for item in rows {
                let newRow = item.components(separatedBy: ",")
                table.append(newRow)
            }
            print(table)
            for row in table{
                if(row[0] == name){
                    output = row
                }
            }
            return output
        } catch{
            print(error)
        }
        return output
    }
}

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
    var low_hr = Int()
    var high_hr = Int()
    var low_rr = Int()
    var high_rr = Int()
    struct signs{
        
    }
    struct symptoms{
        
    }
    init(name: String){
        
    }
//    make two different constructors for an ailment, one can either know the name based on redflags, or
//    an ailment can be initialized with all information if found through a keyword lookup process.
//    this would make it more efficient because you wouldn't have to lookup a keyword then lookup the info for that ailment
    func lookup()->[String]{
        let output = [String]()
//        this function searches csv file by name to get more information about ailments to perform further comparisons
//        allows for information to be gathered to vet an ailment, and then provide assessment/treatment info
        return output
    }
}

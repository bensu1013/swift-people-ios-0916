//
//  File.swift
//  swift-people
//
//  Created by Benjamin Su on 9/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool { return skills.count >= 4 ? true : false }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    
    init() {
        self.name = "John Doe"
        ageInYears = nil
    }
    
    func celebrateBirthday() -> String {
        if let _ = self.ageInYears {
            self.ageInYears! += 1
            
            return "HAPPY \(self.ageInYears!)\(self.ageInYears!.ordinal()) BIRTHDAY, \(self.name)!!!"
        } else {
            return "HAPPY BIRTHDAY, \(self.name.uppercased())!!!"
        }
    }
    
    func learnSkillBash() {
        var skillSet = Set(skills)
        skillSet.insert("bash")
        skills = Array(skillSet)
    }
    
    func learnSkillXcode() {
        var skillSet = Set(skills)
        skillSet.insert("Xcode")
        skills = Array(skillSet)
    }
    
    func learnSkillObjectiveC() {
        var skillSet = Set(skills)
        skillSet.insert("Objective-C")
        skills = Array(skillSet)
    }
    func learnSkillSwift() {
        var skillSet = Set(skills)
        skillSet.insert("Swift")
        skills = Array(skillSet)
    }
    func learnSkillInterfaceBuilder() {
        var skillSet = Set(skills)
        skillSet.insert("Interface Builder")
        skills = Array(skillSet)
    }
    
    
    
}

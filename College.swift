//
//  College.swift
//  MMHS_Colleges_App
//
//  Created by Vik Denic on 7/16/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class College{

    var name = String()
    var logoImage = UIImage()
    var color = UIColor()
    var numberOfStudents = Int()

    convenience init(name: String, logoImage: UIImage, color: UIColor, numberOfStudents: Int)
    {
        self.init()
        self.name = name
        self.logoImage = logoImage
        self.color = color
        self.numberOfStudents = numberOfStudents
    }
}
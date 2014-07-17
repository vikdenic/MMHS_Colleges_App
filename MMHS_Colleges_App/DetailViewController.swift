//
//  DetailViewController.swift
//  MMHS_Colleges_App
//
//  Created by Vik Denic on 7/16/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView
    var college = College()

    override func viewDidLoad()
    {
        title = college.name
        view.backgroundColor = college.color
        imageView.image = college.logoImage

    }

}

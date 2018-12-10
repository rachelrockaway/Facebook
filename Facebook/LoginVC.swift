//
//  LoginVC.swift
//  Facebook
//
//  Created by Rachel Stevenson on 12/9/18.
//  Copyright © 2018 Rachel Rockaway. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
  
    // ui obj
    @IBOutlet weak var textFieldsView: UIView!
    
    
    // executed when the scene is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    // executed after aligning the objects
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        configure_textFieldsView()
        
    }
    

    // this function stores code which configures appearance of the textFileds' View
    func configure_textFieldsView() {

        // declaring constants to store information which later on will be assigned to certain 'object'
        let width = CGFloat(2)
        let color = UIColor.groupTableViewBackground.cgColor

        // creating layer to be a border of the view
        let border = CALayer()
        border.borderColor = color
        border.borderWidth = width
        border.frame = CGRect(x: 0, y: 0, width: textFieldsView.frame.width, height: textFieldsView.frame.height)
        
        // creating layer to be a line in the center of the view
        let line = CALayer()
        line.borderWidth = width
        line.borderColor = color
        line.frame = CGRect(x: 0, y: textFieldsView.frame.height / 2 - width, width: textFieldsView.frame.width, height: width)
        
        // assigning created layers to the view
        textFieldsView.layer.addSublayer(border)
        textFieldsView.layer.addSublayer(line)
        
        
        // rounded corners
        textFieldsView.layer.cornerRadius = 5
        textFieldsView.layer.masksToBounds = true
        
    }

}

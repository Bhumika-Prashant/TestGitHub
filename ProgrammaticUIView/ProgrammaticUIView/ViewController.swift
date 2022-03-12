//
//  ViewController.swift
//  ProgrammaticUIView
//
//  Created by Bhumika Hirapara on 2/13/22.
//

import UIKit

class ViewController: UIViewController {

    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        myLabel.text = "Text Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50 / 2, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: .normal)
        myButton.setTitleColor(.blue, for: .normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.7, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(myAction), for: .touchUpInside)
    }

    @objc func myAction() {
        myLabel.text = "tapped"
    }
    
}


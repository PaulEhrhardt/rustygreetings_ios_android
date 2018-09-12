//
//  ViewController.swift
//  rustygreetings
//
//  Created by Paul Ehrhardt on 12.09.18.
//  Copyright © 2018 Paul Ehrhardt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var greeterLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            label.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
            
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let greeter = RustGreetings()
        greeterLabel.text = greeter.sayHello(to: "Rusty my good old boy")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


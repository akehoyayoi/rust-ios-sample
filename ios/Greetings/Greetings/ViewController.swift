//
//  ViewController.swift
//  Greetings
//
//  Created by YOHEI OKAYA on 2019/09/15.
//  Copyright © 2019 YOHEI OKAYA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rustGreetings = RustGreetings()
        print("\(rustGreetings.sayHello(to: "world"))")
        
        label.text = rustGreetings.sayHello(to:  "world")
        
    }


}


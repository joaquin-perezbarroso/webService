//
//  ViewController.swift
//  WebServices
//
//  Created by Joaquin Perez on 15/03/2018.
//  Copyright © 2018 Joaquin Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let netOb = NetworkObject()
        
        netOb.postUser()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


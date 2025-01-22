//
//  ViewController.swift
//  Test
//
//  Created by Santhosh K on 22/01/25.
//

import UIKit
import NetworkManagerSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkManager.getRequestCall("santhosh")
        
    }


}


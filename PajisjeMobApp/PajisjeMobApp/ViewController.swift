//
//  ViewController.swift
//  PajisjeMobApp
//
//  Created by Kastriot on 7/14/20.
//  Copyright © 2020 Kastriot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func showAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Miresevini", message: "Ju urojme sukses ne Kuiz!", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title:"OK",style:.cancel))
        
        self.present(alert,animated:true)
        
    }


}


//
//  ShenimeViewController.swift
//  PajisjeMobApp
//
//  Created by Kastriot on 7/20/20.
//  Copyright © 2020 Kastriot. All rights reserved.
//

import UIKit




class ShenimeViewController: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    var space = " "
    var versioni = 1
    var authors  = "Kastriot Demaj, Jetmir Veselaj"
    let db = DBhelper()
    var list = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        db.insert(versioni: self.versioni , authors: self.authors)
        list = db.read()
        
        print(list)
        
        let data = list.components(separatedBy: ";")
        label1.text = data[0]
        label2.text = data[1]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

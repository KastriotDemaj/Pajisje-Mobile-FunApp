//
//  QuizViewController.swift
//  PajisjeMobApp
//
//  Created by Kastriot on 7/16/20.
//  Copyright © 2020 Kastriot. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    
    @IBOutlet weak var Pyetja: UILabel!
    
    @IBOutlet weak var Pergjigja1: UIButton!
    @IBOutlet weak var Pergjigja2: UIButton!
    @IBOutlet weak var Pergjigja3: UIButton!
    @IBOutlet weak var Pergjigja4: UIButton!
    
    var PergjigjaSakte = String()
    
    
    
    @IBOutlet weak var Rezultati: UILabel!
    @IBOutlet weak var Tjetra: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Hide()
        Random()

        // Do any additional setup after loading the view.
        
    }
    
    func Random(){
       var RandomNumber = arc4random()%4
        RandomNumber += 1
        
        switch RandomNumber {
        case 1:
            Pyetja.text = "What is the capital of Japan"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "2"
            break
        case 2:
            Pyetja.text = "What is the capital of India"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "1"
            break
        case 3:
            Pyetja.text = "What is the capital of France"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "4"
            break
        case 4:
            Pyetja.text = "What is the capital of United Kingdom"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "3"
            break
        default:
            break
        }
        
    }
    
    
    func Hide(){
        Rezultati.isHidden = true
        Tjetra.isHidden = true
        
    }
    
    func Unhide(){
        Rezultati.isHidden = false
        Tjetra.isHidden = false
    }
    
    
    
    @IBAction func Pergjigja1Action(_ sender: Any) {
        Unhide()
        if(PergjigjaSakte == "1"){
            Rezultati.text = " E Sakte "
        }else
        {
            Rezultati.text = "Provoni perseri"
        }
    }
    
    
    @IBAction func Pergjigja2Action(_ sender: Any) {
        Unhide()
        if(PergjigjaSakte == "2"){
            Rezultati.text = " E Sakte "
        }else
        {
            Rezultati.text = "Provoni perseri"
        }
    }
    
    
    @IBAction func Pergjigja3Action(_ sender: Any) {
        Unhide()
        if(PergjigjaSakte == "3"){
            Rezultati.text = " E Sakte "
        }else
        {
            Rezultati.text = "Provoni perseri"
        }
    }
    
    
    @IBAction func Pergjigja4Action(_ sender: Any) {
        Unhide()
        if(PergjigjaSakte == "4"){
            Rezultati.text = " E Sakte "
        }else
        {
            Rezultati.text = "Provoni perseri"
        }
    }
    
    
    @IBAction func Tjetra(_ sender: Any) {
        Random()
        Hide()
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

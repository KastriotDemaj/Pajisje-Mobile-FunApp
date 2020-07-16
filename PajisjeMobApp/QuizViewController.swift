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
    var RandomNumber = 1
    func Random(){
        
        switch RandomNumber {
        case 1:
            Pyetja.text = "Cili eshte kryeqyteti i Japonise?"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "2"
            RandomNumber = RandomNumber + 1
            break
        case 2:
            Pyetja.text = "Cili eshte kryeqyteti i Indise?"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "1"
            RandomNumber = RandomNumber + 1
            break
        case 3:
            Pyetja.text = "Cili eshte kryeqyteti i Frances?"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "4"
            RandomNumber = RandomNumber + 1
            break
        case 4:
            Pyetja.text = "Cili eshte kryeqyteti i Anglise?"
            Pergjigja1.setTitle("Delhi",for:UIControl.State.normal)
            Pergjigja2.setTitle("Tokyo",for:UIControl.State.normal)
            Pergjigja3.setTitle("London",for:UIControl.State.normal)
            Pergjigja4.setTitle("Paris",for:UIControl.State.normal)
            PergjigjaSakte = "3"
            RandomNumber = RandomNumber + 1
            break
        case 5:
            Pyetja.text = "Cila nuk eshte peme?"
            Pergjigja1.setTitle("Portokalli",for:UIControl.State.normal)
            Pergjigja2.setTitle("Banania",for:UIControl.State.normal)
            Pergjigja3.setTitle("Limoni",for:UIControl.State.normal)
            Pergjigja4.setTitle("Patatja",for:UIControl.State.normal)
            PergjigjaSakte = "4"
            RandomNumber = RandomNumber + 1
            break
        case 6:
            Pyetja.text = "Permes Gjibraltarit Spanja kalon ne..."
            Pergjigja1.setTitle("Algjeri",for:UIControl.State.normal)
            Pergjigja2.setTitle("Maroko",for:UIControl.State.normal)
            Pergjigja3.setTitle("Tunis",for:UIControl.State.normal)
            Pergjigja4.setTitle("Libi",for:UIControl.State.normal)
            PergjigjaSakte = "2"
            RandomNumber = RandomNumber + 1
            break
        case 7:
            Pyetja.text = "Familjes se bimeve Solonaceae i takon :"
            Pergjigja1.setTitle("Hudhra",for:UIControl.State.normal)
            Pergjigja2.setTitle("Qepa",for:UIControl.State.normal)
            Pergjigja3.setTitle("Karrota",for:UIControl.State.normal)
            Pergjigja4.setTitle("Duhani",for:UIControl.State.normal)
            PergjigjaSakte = "4"
            RandomNumber = RandomNumber + 1
            break
        case 8:
            Pyetja.text = "Kur u fundos anija Titanik?"
            Pergjigja1.setTitle("1999",for:UIControl.State.normal)
            Pergjigja2.setTitle("1986",for:UIControl.State.normal)
            Pergjigja3.setTitle("1912",for:UIControl.State.normal)
            Pergjigja4.setTitle("1894",for:UIControl.State.normal)
            PergjigjaSakte = "3"
            RandomNumber = RandomNumber + 1
            break
        case 9:
            Pyetja.text = "Aurum nga latinishtja eshte emertim per :"
            Pergjigja1.setTitle("Argjendin",for:UIControl.State.normal)
            Pergjigja2.setTitle("Arin",for:UIControl.State.normal)
            Pergjigja3.setTitle("Bronzin",for:UIControl.State.normal)
            Pergjigja4.setTitle("Zinkun",for:UIControl.State.normal)
            PergjigjaSakte = "2"
            RandomNumber = RandomNumber + 1
            break
        case 10:
            Pyetja.text = "Ne shekullin e peste Herodoti i quajtin me e emrin Mont Skardus..."
            Pergjigja1.setTitle("Karpatet",for:UIControl.State.normal)
            Pergjigja2.setTitle("Alpnet",for:UIControl.State.normal)
            Pergjigja3.setTitle("Malet e Sharrit",for:UIControl.State.normal)
            Pergjigja4.setTitle("Himalajet",for:UIControl.State.normal)
            PergjigjaSakte = "3"
            RandomNumber = RandomNumber + 1
            break
        case 11:
            Pyetja.text = "Cila nga keto kafsh eshte gjitar?"
            Pergjigja1.setTitle("Lopa",for:UIControl.State.normal)
            Pergjigja2.setTitle("Krokodili",for:UIControl.State.normal)
            Pergjigja3.setTitle("Pula",for:UIControl.State.normal)
            Pergjigja4.setTitle("Peshku",for:UIControl.State.normal)
            PergjigjaSakte = "1"
            RandomNumber = RandomNumber + 1
            break
        case 12:
            Pyetja.text = "Burimi i ujit te ngrohte nentokesor quhet..."
            Pergjigja1.setTitle("Vezir",for:UIControl.State.normal)
            Pergjigja2.setTitle("Vajzir",for:UIControl.State.normal)
            Pergjigja3.setTitle("Gejzer",for:UIControl.State.normal)
            Pergjigja4.setTitle("Uje mineral",for:UIControl.State.normal)
            PergjigjaSakte = "3"
            RandomNumber = RandomNumber + 1
            break
        default:
            Pyetja.text = "Nuk ka me pyetje"
            Pergjigja1.isHidden = true
            Pergjigja2.isHidden = true
            Pergjigja3.isHidden = true
            Pergjigja4.isHidden = true
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

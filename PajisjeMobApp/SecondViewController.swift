//
//  SecondViewController.swift
//  PajisjeMobApp
//
//  Created by Kastriot on 7/22/20.
//  Copyright © 2020 Kastriot. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
     let elements = ["he heart of a shrimp is located in its head","A snail can sleep for three years","Slugs have four noses","Elephants are the only animal that can't jump","It takes a sloth two weeks to digest its food","Nearly three percent of the ice in Antarctic glaciers is penguin urine","A cow gives nearly 200,000 glasses of milk in a lifetime","Giraffes have no vocal chords","Kangaroos can't fart","An ostrich's eye is bigger than its brain","Around 50 percent of orangutans have fractured bones","Frogs cannot vomit. If one absolutely has to, then it will vomit its entire stomach"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        
        cell.cell.layer.cornerRadius = cell.cell.frame.height / 2
        cell.img.layer.cornerRadius = cell.img.frame.height / 2
        
        cell.label.text = elements[indexPath.row]
        cell.img.image = UIImage(named:elements[indexPath.row])
        
        
        return cell
    }
}

//
//  ViewController.swift
//  DelegateTest
//
//  Created by Aizhan Yerimbetova on 12/5/17.
//  Copyright © 2017 Aizhan Yerimbetova. All rights reserved.
//

import UIKit

protocol ChangeLabelDelegate{
    func changeLabel(word: String)
}

class ViewController: UIViewController, ChangeLabelDelegate {
   
    
    
    @IBOutlet weak var FirstLabel: UILabel!
    
    var fullName: String = ""
    
    
    @IBAction func moveToSecond(_ sender: Any) {
        
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        VC.delegate = self
        navigationController?.pushViewController(VC, animated: true)
       
    }
    
    func changeLabel(word: String) {
        FirstLabel.text = word
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tamerlan = Someone(name: "Tamerlan", surname: "Kamanov")
        
        tamerlan.getFullName(name: tamerlan.name, surname: tamerlan.surname) { (fullName) in
            self.fullName = fullName
            print("CLOSURE FULL NAME -> \(fullName)")
        }
        
        print("NOT CLOSURE -> \(self.fullName)" )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


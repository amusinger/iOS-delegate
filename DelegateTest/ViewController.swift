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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


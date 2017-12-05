//
//  SecondViewController.swift
//  DelegateTest
//
//  Created by Aizhan Yerimbetova on 12/5/17.
//  Copyright © 2017 Aizhan Yerimbetova. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var delegate: ChangeLabelDelegate?
        @IBOutlet weak var textField: UITextField!
    @IBAction func goBackButton(_ sender: Any) {
        delegate?.changeLabel(word: textField.text!)
        navigationController?.popViewController(animated: true)
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

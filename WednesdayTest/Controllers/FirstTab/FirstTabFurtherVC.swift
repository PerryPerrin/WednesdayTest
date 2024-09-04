//
//  FirstTabFurtherVC.swift
//  WednesdayTest
//
//  Created by Perry Perrin on R 6/09/04.
//

import UIKit

class FirstTabFurtherVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

   
    @IBAction func Back2FirstBtn(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true);
    }
    
}

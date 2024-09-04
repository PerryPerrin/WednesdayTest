//
//  SecondTabVC.swift
//  WednesdayTest
//
//  Created by Perry Perrin on R 6/09/04.
//

import UIKit

class SecondTabVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func ShowSegueBtn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        if let targetVC = storyboard.instantiateViewController(withIdentifier: "SecondTabSegue") as? SecondTabSegueVC {
            present(targetVC, animated: true);
        }
    }
}

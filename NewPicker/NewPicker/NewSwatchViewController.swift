//
//  NewSwatchViewController.swift
//  NewPicker
//
//  Created by Julie Gunset on 12/10/20.
//

import UIKit

class NewSwatchViewController: UIViewController {
    
    var nailShape : NailShape?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! NailsViewController
        destinationVC.view.backgroundColor = UIColor.init(red: 0.9294, green: 0.5922, blue: 0.5490, alpha: 1)
        
        destinationVC.nailShape = nailShape
    }

}

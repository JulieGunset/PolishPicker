//
//  ProfileViewController.swift
//  NewPicker
//
//  Created by Julie Gunset on 12/10/20.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // print(segue.identifier)
            if segue.identifier == "newSwatchSegue" {
                let destinationVC = segue.destination as! ShapePickerViewController
                destinationVC.isNewSwatch = true
            }else if segue.identifier == "savedSwatchesSegue" {
                let destinationVC = segue.destination as! ShapePickerViewController
                destinationVC.isNewSwatch = false
            }else{
                //do nothing
            }
    }

}

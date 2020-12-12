//
//  ColorPickerViewController.swift
//  NewPicker
//
//  Created by Julie Gunset on 12/10/20.
//

import UIKit

class ColorPickerViewController: UIViewController {

    var nailShape : NailShape?
    var nailColor: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func top1Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.5177, green: 0.03529, blue: 0.4235, alpha: 1)
        print(#function)
    }
    
    @IBAction func top2Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.5176, green: 0.0, blue: 1, alpha: 1)
        print(#function)
    }
    
    @IBAction func top3Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.2588, green: 0.0, blue: 0.5020, alpha: 1)
        print(#function)
    }
    
    @IBAction func top4Pressed(_ sender: Any) {
        nailColor = UIColor(red: 1, green: 0.9412, blue: 0.9020, alpha: 1)
        print(#function)
    }
    
    @IBAction func top5Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.3333, green: 0.3333, blue: 0.3333, alpha: 1)
        print(#function)
    }
    
    
    
    @IBAction func middle1Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        print(#function)
    }
    
    @IBAction func middle2Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.8196, green: 0.5412, blue: 0.6078, alpha: 1)
        print(#function)
    }
    
    @IBAction func middle3Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.6392, green: 0.0039, blue: 0.1137, alpha: 1)
        print(#function)
    }
    
    @IBAction func middle4Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.3765, green: 0.2824, blue: 0.4467, alpha: 1)
        print(#function)
    }
    
    @IBAction func middle5Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.5176, green: 0.0353, blue: 0.4235, alpha: 1)
        print(#function)
    }
    
    
    
    @IBAction func bottom1Pressed(_ sender: Any) {
         nailColor = UIColor(red: 0.6784, green: 0, blue: 0.0824, alpha: 1)
        print(#function)
    }
    
    @IBAction func bottom2Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.6471, green: 0.4275, blue: 0.4784, alpha: 1)
        print(#function)
    }
    
    @IBAction func bottom3Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.8118, green: 0.5373, blue: 0.8039, alpha: 1)
        print(#function)
    }
    
    @IBAction func bottom4Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.1020, green: 0.1020, blue: 0.1020, alpha: 1)
        print(#function)
    }
    
    @IBAction func bottom5Pressed(_ sender: Any) {
        nailColor = UIColor(red: 0.7206, green: 0.2275, blue: 0.2314, alpha: 1)
        print(#function)
    }
    
    
    
    @IBAction func viewButtonClick(_ sender: Any) {
        if(nailColor == nil) {
            return
        }
        performSegue(withIdentifier: "viewColorSegue", sender: nil)
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! NailsViewController
        destinationVC.view.backgroundColor = nailColor
        
        destinationVC.nailShape = nailShape
    }
}

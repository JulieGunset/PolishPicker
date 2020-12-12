//
//  ShapePickerViewController.swift
//  NewPicker
//
//  Created by Julie Gunset on 12/10/20.
//

import UIKit

class ShapePickerViewController: UIViewController {
  
    var isNewSwatch = true
    var highlightView = UIView()
    var selectedNailShape : NailShape?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highlightView.layer.borderWidth = 3.0
        highlightView.layer.borderColor = UIColor.lightGray.cgColor
        view.addSubview(highlightView)
    }
    

    @IBAction func buttonPressed(_ sender: Any) {
        let button = sender as! UIButton
        highlightView.isHidden = false
        highlightView.frame = button.frame
        
        selectedNailShape = NailShape(rawValue: button.tag)
    }
    
    
    @IBAction func forwardShapeClick(_ sender: Any) {
    
        if selectedNailShape == nil {
            return
        }
        
        if isNewSwatch {
            performSegue(withIdentifier: "newSwatchSegueFromShape", sender: nil)
        }else{
            performSegue(withIdentifier: "savedSwatchSegueFromShape", sender: nil)
        }
    
    }
    
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        if segue.identifier == "newSwatchSegueFromShape" {
            
            let destinationVC = segue.destination as! NewSwatchViewController
            destinationVC.nailShape = selectedNailShape
        }else{
            let destinationVC = segue.destination as! ColorPickerViewController
            destinationVC.nailShape = selectedNailShape
        }
    }

}

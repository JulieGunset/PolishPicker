//
//  NailsViewController.swift
//  NewPicker
//
//  Created by Julie Gunset on 12/10/20.
//

import UIKit

class NailsViewController: UIViewController {
    
    var nailShape : NailShape? {
        didSet {
            DispatchQueue.main.async {
                self.imageView.image = self.nailShape?.image()
            }
        }
    }

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

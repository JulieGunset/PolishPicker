//
//  ExternalLinksViewController.swift
//  NewPicker
//
//  Created by Julie Gunset on 12/10/20.
//

import UIKit
import SafariServices

class ExternalLinksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TopLeftPressed(_ sender: Any) {
        let safariVC = SFSafariViewController(url: URL(string: "https://www.ulta.com/nail-polish?N=278s")!)
        present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func BottomLeftPressed(_ sender: Any) {
        let safariVC = SFSafariViewController(url: URL(string: "https://www.livelovepolish.com")!)
        present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func TopRightPressed(_ sender: Any) {
        let safariVC = SFSafariViewController(url: URL(string: "http://www.holotaco.com")!)
        present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func BottomRightPressed(_ sender: Any) {
        let safariVC = SFSafariViewController(url: URL(string: "http://www.zoya.com")!)
        present(safariVC, animated: true, completion: nil)
    }
    @IBAction func backToStartPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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

//
//  NailShape.swift
//  NewPicker
//
//  Created by Julie Gunset on 12/10/20.
//

import Foundation
import UIKit

enum NailShape : Int {
    
    
    case bluntSquare = 1
    
    case roundSquare = 2
    
    case oval = 3
    
    case ovalLong = 4
    
    case narrow = 5
    
    case coffin = 6
    
    case stiletto = 7
    
    func image () -> UIImage {
        switch self {
        case .bluntSquare : return UIImage(named: "BluntSquarePic")!
        
        case .roundSquare : return UIImage(named: "RoundSquare")!
        
        case .oval : return UIImage(named: "OvalPic")!
        
        case .ovalLong : return UIImage(named: "OvalLongPic")!
        
        case .narrow : return UIImage(named: "NarrowPic")!
        
        case .coffin : return UIImage(named: "CoffinPic")!
        
        case .stiletto : return UIImage(named: "PointyPic")!
        }
        
        
    }

}

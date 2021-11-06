//
//  ViewController.swift
//  info about chess
//
//  Created by Андрей on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var setButtons: [UIButton]!
    
    var image: String = ""
    var textForTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton ) {
        switch sender.tag {
        case 0:
            image = imageName.king.rawValue
            textForTitle = sender.currentTitle!
        case 1:
            image = imageName.queen.rawValue
            textForTitle = sender.currentTitle!
        case 2:
            image = imageName.bishop.rawValue
            textForTitle = sender.currentTitle!
        case 3:
            image = imageName.knight.rawValue
            textForTitle = sender.currentTitle!
        case 4:
            image = imageName.rook.rawValue
            textForTitle = sender.currentTitle!
        default:
            image = imageName.pawn.rawValue
            textForTitle = sender.currentTitle!
        }
        print(#line, #function, image)
        performSegue(withIdentifier: "InfoViewController", sender: nil)
    }
    
    @IBSegueAction func infoSegue(_ coder: NSCoder) -> InfoViewController? {
        return InfoViewController(coder: coder, image, textForTitle)
    }
    
}



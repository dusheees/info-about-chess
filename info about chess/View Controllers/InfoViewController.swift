//
//  InfoViewController.swift
//  info about chess
//
//  Created by Андрей on 07.11.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    let image: String
    let textForTitle: String
    
    init?(coder: NSCoder, _ image: String, _ textForTitle: String) {
        self.image = image
        self.textForTitle = textForTitle
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        infoImage.image = UIImage(named: image)
        let im: imageName = imageName.init(rawValue: image)!
        infoLabel.text = im.definition
        navigationItem.title = textForTitle
    }
    

}

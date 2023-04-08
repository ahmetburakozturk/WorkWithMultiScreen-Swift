//
//  SecondViewController.swift
//  WrokingWithManyScreen
//
//  Created by ahmetburakozturk on 6.04.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var viewControllerInfoLabel: UILabel!
    
    var nameInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        namelabel.text = nameInfo
    }
    



}

//
//  ViewController.swift
//  WrokingWithManyScreen
//
//  Created by ahmetburakozturk on 6.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var viewControllerInfoLabel: UILabel!
    var nameToSend = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func nextPageButtonClick(_ sender: Any) {
        nameToSend = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            var destinationVC = segue.destination as? SecondViewController
            destinationVC?.nameInfo = nameToSend
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = "View opened Again .d"
    }
}


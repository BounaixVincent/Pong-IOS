//
//  MenuViewController.swift
//  Pong
//
//  Created by BOUNAIX Vincent on 05/12/2018.
//  Copyright © 2018 BOUNAIX Vincent. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifier = segue.identifier
        let destination = segue.destination as? GameViewController
        if identifier == "1player" {
            destination?.spriteName = "SoloGameScene"
        } else if identifier == "2player" {
            destination?.spriteName = "DuoGameScene"
        }
    }
}

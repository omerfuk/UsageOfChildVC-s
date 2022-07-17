//
//  ViewController.swift
//  UsageOfChildVC's
//
//  Created by Ömer Faruk Kılıçaslan on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let secondChildVC = SecondChildVC()

    enum Segues {
        
        static let toFirstChild = "toFirstChild"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSecondChildVC()
    }
    
    func addSecondChildVC() {
        addChild(secondChildVC)
        view.addSubview(secondChildVC.view)
        secondChildVC.view.backgroundColor = .yellow
        secondChildVC.didMove(toParent: self)
        setScndChildVC()
        
    }
    
    func setScndChildVC() {
        secondChildVC.view.frame = CGRect(x: 20, y: view.frame.size.height-250, width: view.frame.size.width - 40, height: 200)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.toFirstChild {
            
            let destVC = segue.destination as! FirstChildVC
            destVC.view.backgroundColor = .blue
        }
    }


}


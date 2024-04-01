//
//  ViewController.swift
//  excercise2
//
//  Created by Dam Hung on 30/03/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weatherIcon: UIImageView!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var signInLabel: UILabel!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var mainView: UIView!
    
    var isExpaned: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(mainView)
        mainView.addSubview(headerView)
        mainView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        mainView.backgroundColor = UIColor.red
        mainView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        contentView.isHidden = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        headerView.addGestureRecognizer(tap)
    }
   
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
//        mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
     
            
        UIView.transition(with: contentView, duration: 1,
                              options: .curveLinear,
                              animations: {
            self.contentView.isHidden = !self.contentView.isHidden
                          })
       
    }

}


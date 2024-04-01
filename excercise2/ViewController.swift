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
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var headerHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var contentHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var contentTopContraint: NSLayoutConstraint!
    
    var isExpaned: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        contentView.layer.cornerRadius = 8
        contentView.clipsToBounds = true
        contentView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        headerView.addGestureRecognizer(tap)
    }
   
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        isExpaned = !isExpaned;
        UIView.animate(withDuration: 0.5) {
            if self.isExpaned {
                self.animating(headerHeight: 60, contentHeightConstraint: 0, contentTopContraint: 60)
            } else {
                self.animating(headerHeight: 120, contentHeightConstraint: 220, contentTopContraint: 120)
            }
            
        }
    }
    
    func animating(headerHeight: CGFloat, contentHeightConstraint: CGFloat, contentTopContraint:CGFloat ){
        self.headerHeightConstraint.constant = headerHeight
        self.contentHeightConstraint.constant = contentHeightConstraint
        self.contentTopContraint.constant = contentTopContraint;
        self.headerView.layoutIfNeeded()
        self.contentView.layoutIfNeeded()
        self.containerView.layoutIfNeeded()
    }

}


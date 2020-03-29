//
//  ViewController.swift
//  ShareViewerChallenge
//
//  Created by Ana Caroline de Souza on 25/03/20.
//  Copyright © 2020 Ana e Leo Corp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var container : UIView!
    
    var shares: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        setupContainer()
        setupShares()
    }
    
    
    func setupShares() {
        
        //this is just a Proof of Concept
        let shareNames = ["PETR4\n4.55","VVAR3\n5.64","B3SA3\n3 7.22","VVAR3\n5.64","B3SA3\n37.22","NOVA3\n37.22","BIBO3\n37.22","B3SA3\n37.22","B3SA3\n37.22","VVAR3\n5.64","B3SA3\n3 7.22","VVAR3\n5.64","FINO3\n37.22","NOVA3\n37.22","FINE3\n37.22","FONO3\n37.22","FINA3\n37.22"]
                
        var shareControl = 0
        
        Timer.scheduledTimer(withTimeInterval: 0.6 , repeats: true) {
            [weak self] (timer) in
            
            if shareControl == shareNames.count {
                shareControl = 0
            }
            let label = UILabel(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 130, height: 100)))
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.preferredFont(forTextStyle: .title2)
            label.numberOfLines = 0
            label.lineBreakMode = .byClipping
            label.textColor = .white
            label.text = "\(shareNames[shareControl])"
            self?.view.addSubview(label)
            
            guard let selfish = self else {return}
            NSLayoutConstraint.activate([
                label.topAnchor.constraint(equalTo: selfish.view.safeAreaLayoutGuide.topAnchor),
                label.heightAnchor.constraint(equalToConstant: 80),
                label.widthAnchor.constraint(equalToConstant: selfish.view.frame.width+30),
                label.leadingAnchor.constraint(equalTo: selfish.view.trailingAnchor, constant: -50)
            ])
            
            UIView.animate(withDuration: 4, delay:0,
                           options:[.curveLinear], animations: {
                            label.transform = CGAffineTransform(translationX: -620, y: 0)
            }) { completion in
                
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { _ in
                    label.removeFromSuperview()
                }
            }
            shareControl+=1
        }
        
    }
    
    func setupContainer(){

        container = UIView(frame: CGRect(x: 0, y: 80 , width: view.frame.width, height: 90))
        container.backgroundColor = .black
        view.addSubview(container)
        
        
    }
    
}

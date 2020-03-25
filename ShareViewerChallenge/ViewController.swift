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
        
        setupConstraints()
        
        setupAnimations()

    }
    
    func setupAnimations() {
        
//        UIView.animate(withDuration: 4, delay: 0, options:[.repeat,.curveLinear], animations: { [weak self] in
//
//            self?.shares.transform = CGAffineTransform(translationX: -450, y: 0)
//
//        }) { completion in
//
//            self.shares.transform = .identity
//
//        }
        
//        UIView.animate(withDuration: 4, delay: 0, options:[.repeat,.curveLinear], animations: { [weak self] in
//
//            self?.shares.transform = CGAffineTransform(translationX: -450, y: 0)
//
//        }) { completion in
//
//            self.shares.transform = .identity
//
//        }
        
    }
    
    func setupShares() {
        
        //        let shareNames = ["PETR4\n4.55","VVAR3\n5.64","B3SA3\n37.22","MGLU4\n52,87","PETR4\n4.55","VVAR3\n5.64","B3SA3\n37.22","MGLU4\n52,87"]
        let shareNames = ["PETR4\n4.55","VVAR3\n5.64","B3SA3\n3 7.22","VVAR3\n5.64","B3SA3\n37.22","NOVA3\n37.22","BIBO3\n37.22","B3SA3\n37.22","B3SA3\n37.22"]
        var shareControl = 0
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
                
            if shareControl == shareNames.count {
                shareControl = 0
            }
                let share = UILabel(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 130, height: 100)))
                share.textAlignment = .center
                share.translatesAutoresizingMaskIntoConstraints = false
                share.font = UIFont.preferredFont(forTextStyle: .title2)
                share.numberOfLines = 0
                share.lineBreakMode = .byClipping
                share.textColor = .white
                share.text = "\(shareNames[shareControl])"
                self.view.addSubview(share)
                
                NSLayoutConstraint.activate([
                    
                    share.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                    share.heightAnchor.constraint(equalToConstant: 80),
                    share.widthAnchor.constraint(equalToConstant: self.view.frame.width+30),
                    share.leadingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
                    
                ])
                
                UIView.animate(withDuration: 4, delay:0,
                               options:[.curveLinear], animations: {
                                share.transform = CGAffineTransform(translationX: -620, y: 0)
                })
            shareControl+=1
            
        }
//
//        shares = UIStackView()
//        shares.translatesAutoresizingMaskIntoConstraints = false
//        shares.distribution = .equalSpacing
//
//        for i in shareNames{
//            let share = UILabel(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 130, height: 100)))
//            share.textAlignment = .center
//            //share.translatesAutoresizingMaskIntoConstraints = false
//            share.font = UIFont.preferredFont(forTextStyle: .title2)
//            share.numberOfLines = 0
//            share.lineBreakMode = .byClipping
//            share.textColor = .white
//            share.text = "\(i)"
//            shares.addArrangedSubview(share)
//        }
//
//        view.addSubview(shares)
        
    }
    
    func setupContainer(){

        container = UIView(frame: CGRect(x: 0, y: 80 , width: view.frame.width, height: 90))
        container.backgroundColor = .black
        view.addSubview(container)
        
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
//            shares.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            shares.heightAnchor.constraint(equalToConstant: 80),
//            shares.widthAnchor.constraint(equalToConstant: view.frame.width+30),
//            shares.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
            
            
            
        ])
    }
    
}

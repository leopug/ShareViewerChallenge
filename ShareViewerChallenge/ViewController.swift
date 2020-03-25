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
        
        UIView.animate(withDuration: 9, delay: 0, options:[.repeat,.curveLinear], animations: { [weak self] in
            
            self?.shares.transform = CGAffineTransform(translationX: -900, y: 0)
            
        })
        
    }
    
    func setupShares() {
        
//        let shareNames = ["PETR4\n4.55","VVAR3\n5.64","B3SA3\n37.22","MGLU4\n52,87","PETR4\n4.55","VVAR3\n5.64","B3SA3\n37.22","MGLU4\n52,87"]
        let shareNames = ["PETR4\n4.55","VVAR3\n5.64","B3SA3\n3 7.22","VVAR3\n5.64","B3SA3\n37.22"]
        
        shares = UIStackView()
        shares.translatesAutoresizingMaskIntoConstraints = false
        shares.distribution = .equalSpacing
        shares.addBackground(color: .black)
        
        
        for i in shareNames{
            let share = UILabel(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 130, height: 100)))
            share.textAlignment = .center
            //share.translatesAutoresizingMaskIntoConstraints = false
            share.font = UIFont.preferredFont(forTextStyle: .title2)
            share.numberOfLines = 0
            share.lineBreakMode = .byClipping
            share.textColor = .white
            share.text = "\(i)"
            shares.addArrangedSubview(share)
        }
        
        view.addSubview(shares)
        
    }
    
    func setupContainer(){

        container = UIView(frame: CGRect(x: 0, y: 80 , width: view.frame.width, height: 70))
        container.backgroundColor = .black
        view.addSubview(container)
        
        
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            shares.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            shares.heightAnchor.constraint(equalToConstant: 60),
            shares.widthAnchor.constraint(equalToConstant: view.frame.width+100),
            shares.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
//            container.topAnchor.constraint(equalTo: view.topAnchor),
//            container.heightAnchor.constraint(equalToConstant: 70),
//            container.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            container.widthAnchor.constraint(equalToConstant: view.frame.width+100)
            
        ])
    }
    
}

extension UIStackView {
    func addBackground(color: UIColor) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = color
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)
    }
}

//
//  BaseViewController.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/30.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
     
        print("✅ \(type(of: self))이 load 되었습니다")
    }
    
    func configure() { }
    
    deinit {
        print("❌ \(type(of: self))이 deinit 되었습니다")
    }
}

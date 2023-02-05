//
//  SecondViewController.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/30.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    func moveToFirst()
}

final class SecondViewController: BaseViewController {
    
    private let mainView = SecondView()
    
    var delegate: SecondViewControllerDelegate?
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(title: "두번째뷰", style: .plain, target: self, action: #selector(secondBtnDidTap))
        self.navigationItem.rightBarButtonItem = item
        mainView.backgroundColor = .systemGray
        
        print(#function)
    }
    
    @objc func secondBtnDidTap() {
        print(#function)
        self.delegate?.moveToFirst()
    }
}

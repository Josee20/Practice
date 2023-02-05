//
//  FirstViewController.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/30.
//

import UIKit

protocol FirstViewControllerDelegate: AnyObject {
    func moveToSecond()
}

final class FirstViewController: BaseViewController {
 
    private let mainView = FirstView()
    
    var delegate: FirstViewControllerDelegate?
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#function)
        let item = UIBarButtonItem(title: "첫번째뷰", style: .plain, target: self, action: #selector(firstBtnDidTap))
        self.navigationItem.rightBarButtonItem = item
        mainView.backgroundColor = .systemRed
    }
    
    @objc func firstBtnDidTap() {
        print(#function)
        delegate?.moveToSecond()
    }
    
}

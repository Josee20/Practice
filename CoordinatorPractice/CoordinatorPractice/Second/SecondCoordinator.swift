//
//  SecondCoordinator.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/30.
//

import UIKit

protocol SecondCoordinatorDelegate: AnyObject {
    func didMovedOut(_ coordinator: SecondCoordinator)
}

class SecondCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var delegate: SecondCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        print(#function)
        self.navigationController = navigationController
    }
    
    func start() {
        print(#function)
        let vc = SecondViewController()
        vc.delegate = self
        self.navigationController.viewControllers = [vc]
    }
}

extension SecondCoordinator: SecondViewControllerDelegate {
    
    func moveToFirst() {
        print(#function)
        self.delegate?.didMovedOut(self)
    }
}


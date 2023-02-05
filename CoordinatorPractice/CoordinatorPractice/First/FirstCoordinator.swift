//
//  FirstCoordinator.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/30.
//

import UIKit

protocol FirstCoordinatorDelegate: AnyObject {
    func didMovedIn(_ coordinator: FirstCoordinator)
}

class FirstCoordinator: Coordinator {
    
    private let firstView = FirstView()
    
    var childCoordinators: [Coordinator] = []
    
    var delegate: FirstCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print(#function)
        let vc = FirstViewController()
        vc.delegate = self
        self.navigationController.viewControllers = [vc]
    }
    
}

extension FirstCoordinator: FirstViewControllerDelegate {
    
    func moveToSecond() {
        print(#function)
        self.delegate?.didMovedIn(self)
    }
}

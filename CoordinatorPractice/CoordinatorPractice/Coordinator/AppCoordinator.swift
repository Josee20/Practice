//
//  AppCoordinator.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/30.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    private var navigationController: UINavigationController!
    
    var isMoved: Bool = false
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if self.isMoved {
            self.showSecondViewController()
        } else {
            self.showFirstViewController()
        }
    }
    
    private func showFirstViewController() {
        print(#function)
        let coordinator = FirstCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
    
    private func showSecondViewController() {
        print(#function)
        let coordinator = SecondCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        coordinator.start()
        self.childCoordinators.append(coordinator)
    }
}

extension AppCoordinator: FirstCoordinatorDelegate {
    
    func didMovedIn(_ coordinator: FirstCoordinator) {
        print(#function)
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator} // 자신의 코디네이터를 안 참조하게 하기위해 (FirstCoordinator -> FirstCoordinator 같은)
        self.showSecondViewController()
    }
}

extension AppCoordinator: SecondCoordinatorDelegate {
    
    func didMovedOut(_ coordinator: SecondCoordinator) {
        print(#function)
        self.childCoordinators = self.childCoordinators.filter { $0 !== coordinator }
        self.showFirstViewController()
    }
}

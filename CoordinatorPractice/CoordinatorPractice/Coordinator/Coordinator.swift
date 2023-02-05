//
//  Coordinator.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/02/03.
//

import Foundation

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

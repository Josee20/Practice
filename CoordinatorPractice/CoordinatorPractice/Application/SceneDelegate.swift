//
//  SceneDelegate.swift
//  CoordinatorPractice
//
//  Created by 이동기 on 2023/01/28.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)

        let nav = UINavigationController()
        window?.rootViewController = nav

        let coordinator = AppCoordinator(navigationController: nav)
        coordinator.start()

        window?.makeKeyAndVisible()
        
        /// 2.
//        let window = UIWindow(windowScene: scene)
//        self.window = window
//
//        let nav = UINavigationController()
//        self.window?.rootViewController = nav
//
//        let coordinator = AppCoordinator(navigationController: nav)
//        coordinator.start()
//
//        self.window?.makeKeyAndVisible()
        
        
        
        
//        guard let scene = (scene as? UIWindowScene) else { return }
//        window = UIWindow(windowScene: scene)
//
//        let vc = FirstViewController()
//        let nav = UINavigationController(rootViewController: vc)
//        window?.rootViewController = nav
//        window?.makeKeyAndVisible()
        
//        if let windowScene = scene as? UIWindowScene {
//
//            let window = UIWindow(windowScene: windowScene)
//            self.window = window
//
//            let navigationController = UINavigationController()
//            self.window?.rootViewController = navigationController
//
//            let coordinator = AppCoordinator(navigationController: navigationController)
//            coordinator.start()
//
//            self.window?.makeKeyAndVisible()
//        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}

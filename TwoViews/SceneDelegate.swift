//
//  SceneDelegate.swift
//  TwoViews
//
//  Created by Matvei Khlestov on 06.05.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let viewController = ViewController()
        window.rootViewController = viewController
        
        self .window = window
        window.makeKeyAndVisible()
        
        
    }
}


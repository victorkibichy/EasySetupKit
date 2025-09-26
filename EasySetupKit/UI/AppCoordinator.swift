//
//  AppCoordinator.swift
//  EasySetupKit
//
//  Created by Kibichy on 25/09/2025.
//


import UIKit

/// A protocol for managing your app’s navigation flow and screen routing.
///
/// Implement this to decouple navigation logic from view controllers.
public protocol AppCoordinator {
    var window: UIWindow? { get set }
    func start()
}

/// Default coordinator that sets a basic root view controller.
///
/// Override `start()` to customize your app’s initial screen.
open class DefaultAppCoordinator: AppCoordinator {
    public var window: UIWindow?
    
    /// Initializes the coordinator with an optional window.
    /// - Parameter window: The app's main window (usually provided by AppDelegate or SceneDelegate).
    public init(window: UIWindow? = nil) {
        self.window = window
    }
    
    /// Starts the app by setting a root view controller.
    /// Override this method to present your onboarding, login, or main screen.
    open func start() {
        guard let window = window else { return }
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = Theme.current.backgroundColor
        viewController.title = "Home"
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.prefersLargeTitles = true
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

//
//  AppearanceConfigurator.swift
//  EasySetupKit
//
//  Created by Kibichy on 25/09/2025.
//


import UIKit

/// Configures global `UIAppearance` proxies (e.g., `UINavigationBar`, `UIButton`) in one call.
///
/// Automatically uses the current ``Theme`` to apply consistent styling across the app.
public enum AppearanceConfigurator {
    
    /// Applies default appearance based on ``Theme/current``.
    public static func configure() {
        configure(for: Theme.current)
    }
    
    /// Applies appearance using a specific theme.
    /// - Parameter theme: The theme to use for global styling.
    public static func configure(for theme: Theme) {
        // Navigation Bar
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithDefaultBackground()
        navigationBarAppearance.titleTextAttributes = [.font: UIFont.preferredFont(forTextStyle: .headline)]
        
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        UINavigationBar.appearance().tintColor = theme.primaryColor
        
        // Button (for ThemedButton and standard buttons)
        UIButton.appearance().tintColor = theme.primaryColor
        
        // Optional: Tab Bar, Switch, etc.
        // UITabBar.appearance().tintColor = theme.primaryColor
        
        
    }
}

import UIKit
import SwiftUI

/// A unified entry point to configure your iOS app’s appearance, services, and environment.
///
/// Call this early in your app lifecycle:
/// - In a **SwiftUI** app: inside the `init()` of your `@main App`.
/// - In a **UIKit** app: in `application(_:didFinishLaunchingWithOptions:)`.
///
/// Example:
/// ```swift
/// // SwiftUI
/// @main struct MyApp: App {
///     init() { EasyAppSetup.configure() }
///     var body: some Scene { ... }
/// }
///
/// // UIKit
/// func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
///     EasyAppSetup.configure()
///     return true
/// }
/// ```
public enum EasyAppSetup {
    
    /// Configures the app using the default theme and registers essential services.
    public static func configure() {
        AppearanceConfigurator.configure()
        ServiceLocator.registerDefaultServices()
    }
    
    /// Configures the app using a custom theme.
    /// - Parameter theme: The custom theme to apply globally.
    public static func configure(theme: Theme) {
        Theme.current = theme
        AppearanceConfigurator.configure(for: theme)
        ServiceLocator.registerDefaultServices()
    }
}
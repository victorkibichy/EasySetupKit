//
//  EnvironmentValues.swift
//  EasySetupKit
//
//  Created by Kibichy on 25/09/2025.
//


import SwiftUI

/// SwiftUI `EnvironmentValues` extensions to inject app-wide configuration into views.
///
/// After calling ``EasyAppSetup/configure()``, inject the current theme like this:
/// ```swift
/// ContentView()
///     .environment(\.easySetupTheme, Theme.current)
/// ```
///
/// Then use it in any view:
/// ```swift
/// struct ContentView: View {
///     @Environment(\.easySetupTheme) var theme
///     
///     var body: some View {
///         Text("Hello")
///             .foregroundColor(theme.primaryColor.toSwiftUIColor())
///     }
/// }
/// ```
public extension EnvironmentValues {
    private struct EasySetupThemeKey: EnvironmentKey {
        static let defaultValue: Theme = .default
    }
    
    /// The current app theme, injectable via `.environment(\.easySetupTheme, ...)`.
    var easySetupTheme: Theme {
        get { self[EasySetupThemeKey.self] }
        set { self[EasySetupThemeKey.self] = newValue }
    }
}

// MARK: - UIColor ↔ Color Conversion (Helper)

public extension UIColor {
    /// Converts a `UIColor` to SwiftUI's `Color`.
    func toSwiftUIColor() -> Color {
        Color(self)
    }
}

public extension Color {
    /// Converts a SwiftUI `Color` to `UIColor`.
    func toUIColor() -> UIColor {
        UIColor(self)
    }
}

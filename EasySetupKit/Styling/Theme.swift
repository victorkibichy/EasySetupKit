//
//  Theme.swift
//  EasySetupKit
//
//  Created by Kibichy on 25/09/2025.
//


import UIKit

/// A centralized theming system for colors, typography, and spacing.
///
/// Provides a single source of truth for your app’s visual identity.
/// Access the active theme via ``Theme/current``.
///
/// Example:
/// ```swift
/// let color = Theme.current.primaryColor
/// let font = Theme.current.buttonFont
/// ```
public struct Theme {
    /// The primary brand color (e.g., used for buttons, active states).
    public var primaryColor: UIColor
    
    /// Text color that appears on top of `primaryColor`.
    public var onPrimaryColor: UIColor
    
    /// Default background color for views.
    public var backgroundColor: UIColor
    
    /// Primary text color on background surfaces.
    public var onBackgroundColor: UIColor
    
    /// Font used for buttons and calls-to-action.
    public var buttonFont: UIFont
    
    /// The default theme using system colors.
    public static let `default` = Theme(
        primaryColor: .systemBlue,
        onPrimaryColor: .white,
        backgroundColor: .systemBackground,
        onBackgroundColor: .label,
        buttonFont: .preferredFont(forTextStyle: .headline)
    )
    
    /// The currently active theme. Defaults to ``Theme/default``.
    ///
    /// Set this before calling ``EasyAppSetup/configure(theme:)`` to apply custom styling.
    public static var current: Theme = .default
}
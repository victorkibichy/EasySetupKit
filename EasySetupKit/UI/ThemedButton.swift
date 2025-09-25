//
//  ThemedButton.swift
//  EasySetupKit
//
//  Created by Kibichy on 25/09/2025.
//


import UIKit

/// A customizable button with built-in support for light/dark mode and brand styling.
///
/// Uses the current ``Theme`` to automatically adapt colors and typography.
///
/// Usage:
/// ```swift
/// let button = ThemedButton(type: .system)
/// button.setTitle("Submit", for: .normal)
/// ```
open class ThemedButton: UIButton {
    
    /// Initializes and configures the button with theme-based styling.
    override public init(frame: CGRect) {
        super.init(frame: frame)
        applyTheme()
    }
    
    /// Initializes and configures the button from Interface Builder or Storyboard.
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        applyTheme()
    }
    
    private func applyTheme() {
        let theme = Theme.current
        backgroundColor = theme.primaryColor
        setTitleColor(theme.onPrimaryColor, for: .normal)
        setTitleColor(theme.backgroundColor, for: .highlighted)
        titleLabel?.font = theme.buttonFont
        layer.cornerRadius = 8
        clipsToBounds = true
    }
}

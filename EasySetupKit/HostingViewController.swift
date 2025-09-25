import SwiftUI
import UIKit

/// A lightweight `UIViewController` that wraps a SwiftUI view—ideal for embedding SwiftUI in UIKit apps.
///
/// This avoids the need to subclass `UIHostingController` manually in your app code.
///
/// Example:
/// ```swift
/// let swiftUIView = ContentView()
/// let hostingVC = HostingViewController(rootView: swiftUIView)
/// navigationController?.pushViewController(hostingVC, animated: true)
/// ```
open class HostingViewController<Content: View>: UIHostingController<Content> {
    
    /// Creates a new hosting view controller with the given SwiftUI root view.
    /// - Parameter rootView: The SwiftUI view to display.
    public init(rootView: Content) {
        super.init(rootView: rootView)
        // Optional: disable automatic safe area inset adjustment if needed
        // disablesAutomaticKeyboardDismissal = true
    }
    
    @MainActor required dynamic init?(coder: NSCoder) {
        // This path is not used in programmatic creation, but required by UIKit
        fatalError("init(coder:) has not been implemented")
    }
}
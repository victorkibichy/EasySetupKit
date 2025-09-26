//
//  UIKitView.swift
//  EasySetupKit
//
//  Created by Kibichy on 25/09/2025.
//


import SwiftUI
import UIKit

/// A SwiftUI view that wraps a `UIViewController`, enabling UIKit components in SwiftUI.
///
/// Useful for integrating complex UIKit screens (e.g., `UIImagePickerController`, custom `UIViewController`) into SwiftUI apps.
///
/// Example:
/// ```swift
/// struct CameraView: View {
///     var body: some View {
///         UIKitView {
///             UIImagePickerController()
///         }
///     }
/// }
/// ```
public struct UIKitView <ViewController: UIViewController> : UIViewControllerRepresentable {
    
    private let makeViewController: () -> ViewController
    
    /// Creates a SwiftUI wrapper for a UIKit view controller.
    /// - Parameter makeViewController: A closure that returns a new instance of the view controller.
    public init(makeViewController: @escaping () -> ViewController) {
        self.makeViewController = makeViewController
    }
    
    public func makeUIViewController(context: Context) -> ViewController {
        makeViewController()
    }
    
    public func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Leave empty unless you need to respond to SwiftUI state changes
    }
}

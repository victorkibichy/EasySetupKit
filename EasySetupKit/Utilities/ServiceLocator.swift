//
//  ServiceLocator.swift
//  EasySetupKit
//
//  Created by Kibichy on 25/09/2025.
//


import Foundation

/// A simple, type-safe service locator for dependency management without heavy frameworks.
///
/// Registers and resolves services by type. Ideal for lightweight apps that don’t need Swinject or Dip.
///
/// Example:
/// ```swift
/// // Registration
/// ServiceLocator.register(MyNetworkService())
///
/// // Resolution
/// let network = ServiceLocator.resolve(for: NetworkService.self)!
/// ```
public final class ServiceLocator {
    private static var services = [String: Any]()
    
    /// Registers a service instance.
    /// - Parameters:
    ///   - service: The concrete instance to register.
    ///   - type: The protocol or type to register it under (defaults to inferred type).
    public static func register<T>(_ service: T, for type: T.Type = T.self) {
        services[String(describing: type)] = service
    }
    
    /// Resolves a previously registered service.
    /// - Parameter type: The type of service to resolve.
    /// - Returns: The service instance, or `nil` if not registered.
    public static func resolve<T>(for type: T.Type = T.self) -> T? {
        services[String(describing: type)] as? T
    }
    
    /// Registers default services used by `EasySetupKit`.
    static func registerDefaultServices() {
        // Only register if not already overridden
        if resolve(for: Logger.self) == nil {
            register(ConsoleLogger(), for: Logger.self)
        }
    }
}


#if DEBUG

class CheecKView {
    
   
    let serviceLocator = ServiceLocator()
    
    
    func testMe() {
        ServiceLocator.registerDefaultServices()
    }
   
}
#endif
    
    




import Foundation

/// A lightweight logging interface with environment-aware output (e.g., silent in production).
///
/// Use this instead of `print()` to allow configurable, testable, and production-safe logging.
///
/// Example:
/// ```swift
/// let logger = ServiceLocator.resolve(for: Logger.self)!
/// logger.log("App launched")
/// ```
public protocol Logger {
    /// Logs a message with optional context.
    /// - Parameters:
    ///   - message: The message to log.
    ///   - file: Source file (automatically filled via `#file`).
    ///   - function: Calling function (automatically filled via `#function`).
    ///   - line: Line number (automatically filled via `#line`).
    func log(_ message: String, file: String, function: String, line: Int)
}

/// Default console logger that only outputs in DEBUG builds.
public struct ConsoleLogger: Logger {
    public init() {}
    
    public func log(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
        #if DEBUG
        let fileName = (file as NSString).lastPathComponent
        print("[\(fileName):\(line)] \(function) - \(message)")
        #endif
    }
}
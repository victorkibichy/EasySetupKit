# ``EasySetupKit``

An easy-to-use library to bootstrap scalable iOS applications using highly reusable components, wrappers, and opinionated defaults for both **UIKit** and **SwiftUI**.

## Overview

`EasySetupKit` reduces boilerplate and accelerates development by providing:

- Preconfigured UI components with consistent theming  
- Seamless interoperability between UIKit and SwiftUI  
- App lifecycle helpers for setup, routing, and dependency injection  
- Utilities for common tasks (logging, environment setup, appearance configuration)

Whether you're starting a new UIKit app, a SwiftUI app, or a hybrid project, `EasySetupKit` helps you establish a maintainable foundation in minutes.

## Topics

### Getting Started

- ``EasyAppSetup``
  A unified entry point to configure your app’s appearance, dependencies, and root interface.

### UI Components & Wrappers

- ``ThemedButton``
  A customizable button with built-in support for light/dark mode and brand styling.

- ``HostingViewController``
  A lightweight `UIViewController` that wraps a SwiftUI view—ideal for embedding SwiftUI in UIKit apps.

- ``UIKitView``
  A SwiftUI view that wraps a `UIViewController`, enabling UIKit components in SwiftUI.

### App Architecture Helpers

- ``AppCoordinator``
  A protocol and default implementation for managing navigation flow and screen routing.

- ``ServiceLocator``
  A simple, type-safe service locator for dependency management without heavy frameworks.

### Styling & Appearance

- ``Theme``
  A centralized theming system for colors, typography, and spacing.

- ``AppearanceConfigurator``
  Configures global `UIAppearance` proxies (e.g., `UINavigationBar`, `UIButton`) in one call.

### Utilities

- ``Logger``
  A lightweight logging interface with environment-aware output (e.g., silent in production).

- ``Environment+EasySetup``
  SwiftUI `EnvironmentValues` extensions to inject app-wide configuration into views.

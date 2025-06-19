# 🚀 VIPER-SWIFTUI

A modern **VIPER architecture** implementation using **SwiftUI** and **Combine**, designed with scalability, testability, and maintainability in mind.

![SwiftUI](https://img.shields.io/badge/SwiftUI-%F0%9F%93%9A-blue?style=for-the-badge)
![VIPER](https://img.shields.io/badge/VIPER-Clean%20Architecture-4CAF50?style=for-the-badge)
![Combine](https://img.shields.io/badge/Combine-Functional%20Reactive%20Programming-7952B3?style=for-the-badge)

---

## 🧱 Architecture

This project implements the **VIPER** pattern:

- **View**: SwiftUI views
- **Interactor**: Business logic
- **Presenter**: Prepares data for the view
- **Entity**: Model layer
- **Router**: Handles navigation

## 🛠 Features

- 🔌 **Combine** framework for reactive data flow
- 🧪 **Dependency Injection** for testability
- ✅ **Unit Tests** for ViewModel & API layers
- 📦 **Generic API Layer** with `Decodable` support
- 🌐 Fetches user list from [JSONPlaceholder API](https://jsonplaceholder.typicode.com/users)

## 📷 Preview

<img src="https://github.com/9818595165/VIPER-SWIFTUI/assets/preview.gif" width="600" alt="App Preview" />

## 🧪 Unit Testing

- Mock API client using protocols
- XCTest used for testing presenter, interactor, and API services
- Combine’s `XCTestExpectation` for handling async testing

## 📁 Folder Structure


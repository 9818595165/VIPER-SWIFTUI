
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

```
VIPER-SWIFTUI/
│
├── Modules/
│   ├── User/
│   │   ├── View/
│   │   ├── Interactor/
│   │   ├── Presenter/
│   │   ├── Entity/
│   │   └── Router/
│
├── Services/
│   └── APIClient.swift
│
├── Utilities/
│   └── Dependency Injection
│
└── Tests/
    ├── VIPERTests/
    └── MockData/
```

## 🧰 Requirements

- iOS 14+
- Xcode 15+
- Swift 5.9+

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/9818595165/VIPER-SWIFTUI.git
   ```
2. Open in Xcode:
   ```bash
   open VIPER-SWIFTUI.xcodeproj
   ```

3. Run the app on the simulator or device.

## 🙌 Contributions

Contributions are welcome! Feel free to open issues or submit pull requests.

## 📜 License

This project is licensed under the MIT License.

---

### 💬 Feedback

Have questions or suggestions? Feel free to reach out via [GitHub Issues](https://github.com/9818595165/VIPER-SWIFTUI/issues).

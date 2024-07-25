# SwiftUI Course - Section 20: SwiftUI for All Devices

## What was done:
Section 20 of the SwiftUI course focused on creating applications that work across multiple Apple devices (watchOS, macOS) and sharing code between them using a core framework.

## How it was done:
### Creating Targets for Different Devices:
- Set up targets for different devices, including watchOS and macOS.
- Created a core framework to share code and resources between the different app targets.

### Using NavigationLink:
- Implemented `NavigationLink` for navigation within the applications.
- Ensured seamless navigation across different device interfaces.

### Implementing Core Framework in watchOS Application:
- Integrated the core framework into the watchOS application.
- Shared common logic and resources between the iOS, macOS, and watchOS targets.

### Sharing Views Between Targets:
- Shared views across different targets without using `#if #else` checks.
- Ensured views were reusable and maintained consistency across different devices.

### Using NavigationSplitView Instead of NavigationView:
- Replaced `NavigationView` with `NavigationSplitView` for better navigation management in macOS applications.
- Utilized `NavigationSplitView` to create a more adaptable and flexible navigation structure.

## What I learned:
- **Multi-Device Support**
- **Code Sharing**
- **Navigation Management**
- **Cross-Platform Views**


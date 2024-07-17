# SwiftUI Course - Section 3: Building List and Navigation

## What was done:
This part of the SwiftUI course covered four additional lessons focusing on lists, navigation, detail screens, and animations:
1. **Presenting a List of Items**: Displaying a list of items using `List` and formatting the items.
2. **Using Extract View and Navigation Components**: Extracting views, passing models, and implementing navigation.
3. **Creating and Navigating to a Detail Screen**: Setting up detail screens and enabling navigation to them.
4. **Implementing Tap Gestures and Animations**: Adding tap gestures and simple animations to views.

## How it was done:
### Presenting a List of Items:
- Created a list of items using the `List` view.
- Ensured list items conform to the `Identifiable` protocol.
- Used the `Image` view to display images with modifiers such as `resizable`, `clipShape`, and `aspectRatio`.
- Formatted numbers using the `formatted` function.

### Using Extract View and Navigation Components:
- Extracted subviews to keep views lightweight and maintainable.
- Passed models to subviews.
- Implemented `NavigationStack`, similar to `UINavigationController`, for managing view navigation.
- Used `NavigationLink` for navigation and ensured the value conforms to `Hashable`.
- Connected `NavigationDestination` to `NavigationLink` using a `Hashable` model.

### Creating and Navigating to a Detail Screen:
- Created a detail screen and passed the model to it.
- Added `NavigationStack` to the preview to enable navigation view modifiers.

### Implementing Tap Gestures and Animations:
- Added `onTapGesture` to handle tap events.
- Used `withAnimation` to implement simple animations for smoother UI transitions.

## What I learned:
- **List Handling**
- **View Extraction**
- **Navigation Techniques**
- **Detail Screens**
- **Gesture and Animation**

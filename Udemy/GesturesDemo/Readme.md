# SwiftUI Course - Section 13: Implementing Gestures in SwiftUI

## What was done:
Section 13 of the SwiftUI course focused on implementing various gestures to enhance interactivity within SwiftUI applications. The key gestures covered include TapGesture, DragGesture, MagnificationGesture, and RotationGesture.

## How it was done:
### Implementing TapGesture:
- Added a TapGesture using the `.gesture` viewModifier to the Card view.
- Utilized a boolean value to change the background color of the Card view based on the tap gesture.

### Implementing DragGesture:
- Added a DragGesture to move the Y position of a view and bound it to a `@State` property.
- Implemented the `onEnded` modifier to reset the card position once the drag gesture ends.
- Applied spring animation to the drag gesture for smooth and natural transitions.

### Implementing MagnificationGesture:
- Added a MagnificationGesture to handle pinch-to-zoom interactions.
- Used `scaleEffect` to dynamically adjust the view's scale based on the magnification gesture input.

### Implementing RotationGesture:
- Added a RotationGesture to handle rotation interactions.
- Applied `rotationEffect` to adjust the view's rotation based on the gesture input in degrees.

## What I learned:
- **TapGesture Handling**
- **DragGesture Implementation**
- **MagnificationGesture for Zooming**
- **RotationGesture for Rotations**

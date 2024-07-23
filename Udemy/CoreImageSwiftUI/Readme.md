# SwiftUI Course - Section 18: Integrating Core ML with SwiftUI

## What was done:
Section 18 of the SwiftUI course focused on integrating Core ML to enable machine learning capabilities within a SwiftUI application.

## How it was done:
### Creating a Horizontal List:
- Used `ScrollView(.horizontal)`, `HStack`, and `ForEach` to create a horizontal list.
- Displayed a collection of items in a horizontally scrollable view.

### Implementing MLModel:
- Added a pre-trained MLModel (resnet50) to the project for image detection.
- Configured the MLModel to be used within the SwiftUI application.

### Resizing UIImage:
- Implemented an algorithm to resize `UIImage` objects to the required dimensions for model input.
- Ensured images were appropriately resized for optimal ML model performance.

### Detecting Image Using resnet50:
- Integrated the resnet50 ML model to detect and classify images.
- Processed images through the ML model and displayed the detection results in the UI.

## What I learned:
- **Horizontal Lists in SwiftUI**: Learned to create and manage horizontal lists using `ScrollView`, `HStack`, and `ForEach`.
- **Core ML Integration**
- **Image Processing**
- **Image Detection**

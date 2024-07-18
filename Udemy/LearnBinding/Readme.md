# SwiftUI Course - Understanding State and Binding

## What was done:
This section of the SwiftUI course focused on managing state using the `@State`, `@Binding`, and `@EnvironmentObject` property wrappers to create dynamic and interactive applications.

## How it was done:
### Using @State Property Wrapper:
- Defined state variables within a view using the `@State` property wrapper.
- Managed local state and updated UI elements based on state changes.
- Demonstrated how changes to state variables trigger automatic view updates.

### Using @Binding Property Wrapper:
- Passed state from parent views to child views using the `@Binding` property wrapper.
- Enabled two-way data binding, allowing child views to update parent view state.
- Demonstrated the effective sharing of state between parent and child views for synchronized updates.

### Using @EnvironmentObject Property Wrapper:
- Created a global state model conforming to the `ObservableObject` protocol.
- Injected the global state into the view hierarchy using the `@EnvironmentObject` property wrapper.
- Enabled state sharing across multiple views, ensuring consistent and centralized state management.
- Demonstrated how to access and update global state from any view within the hierarchy​⬤

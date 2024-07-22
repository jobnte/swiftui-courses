# SwiftUI Course - Section 8 Implementing Weather App Using Web API and MV Pattern

## What was done:
This part of the SwiftUI course focused on integrating the OpenWeatherMap API to fetch and display weather data in a SwiftUI application.

## How it was done:
### Creating an Account and Obtaining API Token:
- Registered for an account on the OpenWeatherMap service.
- Obtained the `app_id` token necessary for API authentication.

### Implementing WebService and Models:
- Developed a `WebService` class to handle API requests and responses.
- Created models `WeatherResponse` and `Weather` to parse and store the weather data returned by the API.

### Creating an ObservableObject:
- Implemented an `ObservableObject` to manage the state and trigger API requests.
- Used the `ObservableObject` to fetch weather data based on user input.

### Updating the Main View:
- Added a `TextField` to the main view for user input (city name).
- Displayed the fetched weather data (humidity and temperature) in the main view.
- Ensured the UI updates dynamically based on the fetched data.

## What I learned:
- **API Integration**
- **Networking in SwiftUI**
- **State Management with ObservableObject**


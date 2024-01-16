# UnitTests

Let's consider that any data or logic should be taken from the View and passed from the ViewModel in our case. In most cases, the ViewModel is responsible for being a bridge between the Model and the View.

> Why we move all logic to ViewModel? 
<details>
  <summary> For those who enjoy delving deeper, additional details are available </summary>
Moving logic to the ViewModel in an MVVM (Model-View-ViewModel) architecture offers several advantages:

Separation of Concerns:

It helps in maintaining a clear separation of concerns. The ViewModel is responsible for handling the logic and state of the application, keeping the View focused on the user interface.
Testability:

Logic in the ViewModel is typically more testable compared to logic in the View. By isolating business logic in the ViewModel, you can write unit tests more effectively.
Reusability:

ViewModel logic can often be reused across different Views. This is beneficial when dealing with similar functionality in various parts of the application.
Decoupling from UI Framework:

The ViewModel is not tied to the UI framework. This means that the same ViewModel can be used with different Views, allowing flexibility if you decide to change or add UI components.
Maintainability:

Centralizing logic in the ViewModel makes the codebase more maintainable. It's easier to locate and update business logic when it's contained in a dedicated component.
State Management:

ViewModel often manages the state of the application. By keeping the logic responsible for state changes in one place, it simplifies tracking and managing the application's state.
Improved User Interface Responsiveness:

Separating logic into the ViewModel can contribute to a more responsive UI. Background tasks and asynchronous operations can be handled in the ViewModel without blocking the main UI thread.
</details>

Unit tests have access to the ViewModel as a class, allowing us to test even labels assigned to View elements. Additionally, we can test toggles to simulate tap() and assert whether changes on the View occur as expected

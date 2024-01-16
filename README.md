# UI Tests

At the end of our journey, we can consider that most of the logic should be tested at the Unit Test level, <br> &emsp; including labels and toggles.

In the current example, it would be nice to perform only a sanity test, ensuring that all elements exist and, <br> &emsp; after tapping, we observe the image and also image can be hidden.

> Since it's a very lightweight test, it will only take a couple of seconds.


| Cons❓           | Prons  ✅          |
| --------------- | --------------- |
| It will work with localized strings BUT if data comes in an object from the server, and unit tests use mocks. <br> Basically, we send whatever we want to validate    |Testing existing elements with AccessibilityIdentifiers instead of testing values <br> or labels saves time for UI Test execution, as units cover that part   |


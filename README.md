# Swift Concurrency Bug

Xcode 16.2 simulator iPhone 11 iOS 18.3.1.

Example of stable concurrency crash with using `async let`.

To call crash run this app and tap button on the first Screen.
You will see `freed pointer was not the last allocation`.

App will work without crash if change structure `MyProfileTestModel` or if change minimal iOS version to 16

<img width="600" alt="LetAsyncCrashScreen" src="https://github.com/user-attachments/assets/4c909562-f6c7-4728-a271-94648f047635" />

## How do I use them?

```dart
import 'package:splash_screens/splash_screens.dart';

return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: showSplashScreen(
            () => {} // Navigate to home page
        ),
      ),
    );

# Flutter Sweetalert

### _Sweet alert for flutter, A beautiful replacement for Flutter "alert"._

<p align="center">
  <a href="">
    <img alt="FlutterSweetAlert" src="assets/images/FlutterSweetalert.gif" width="300">
  </a>
</p>

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`flutter pub get`):

```yaml
dependencies:
  flutter_sweetalert: ^0.0.7
```

2. Import the package and use it in your Flutter App.

```dart
import 'package:flutter_sweetalert/flutter_sweetalert.dart';
```

## Example

There are a number of properties that you can modify:

- icon
- title
- text
- button

#### Simple alert show a dialog with no animated icon

```yaml
FlutterSweetalert.simpleAlert(
    context: context,
    title: 'Hello world!',
    button: 'OK',
)
```

```yaml
FlutterSweetalert.simpleAlert(
    context: context,
    title: 'Title goes here!',
    text: '...and text goes here!',
    button: 'OK',
)
```

#### Icon alert show a dialog with animated icon of four type of alert.

#### The icon can be of four type `success`, `failed`, `info`, and `warning`.

```yaml
FlutterSweetalert.iconAlert(
    context: context,
    icon: 'success',
    title: 'Good job!',
    button: 'OK',
)
```

```yaml
FlutterSweetalert.iconAlert(
    context: context,
    icon: 'success',
    title: 'Good job!',
    text: 'You clicked the button!',
    button: 'OK',
)
```

# Pop Alert

### _Pop alert for flutter, A beautiful replacement for Flutter "alert"._

<p align="center">
  <a href="">
    <img alt="PopAlert" src="assets/images/Popalert.gif" width="300">
  </a>
</p>

## Installation

1. Add the latest version of package to your pubspec.yaml (and run`flutter pub get`):

```yaml
dependencies:
  pop_alert: ^0.0.7
```

2. Import the package and use it in your Flutter App.

```dart
import 'package:pop_alert/pop_alert.dart';
```

## Example

There are a number of properties that you can modify:

- icon
- title
- text
- button

#### Simple alert show a dialog with no animated icon

```yaml
PopAlert.simpleAlert(
    context: context,
    title: 'Hello world!',
    button: 'OK',
)
```

```yaml
PopAlert.simpleAlert(
    context: context,
    title: 'Title goes here!',
    text: '...and text goes here!',
    button: 'OK',
)
```

#### Icon alert show a dialog with animated icon of four type of alert.

#### The icon can be of four type `success`, `failed`, `info`, and `warning`.

```yaml
PopAlert.iconAlert(
    context: context,
    icon: 'success',
    title: 'Good job!',
    button: 'OK',
)
```

```yaml
PopAlert.iconAlert(
    context: context,
    icon: 'success',
    title: 'Good job!',
    text: 'You clicked the button!',
    button: 'OK',
)
```

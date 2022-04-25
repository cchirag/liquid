# Liquid

Liquid is a flutter library that helps you write Responsive and Adaptive UIs with ease.

## Installation

Install the package using the command

```dart
flutter pub add flutter_liquid
```

## Before you start using the package

Create a file called breakpoints.dart under lib folder and define your platform specific breakpoints.

#### Example

```dart
import 'package:flutter_liquid/flutter_liquid.dart';

class Breakpoints {
  static final Breakpoint androidBreakpoint =
      Breakpoint.android(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint iosBreakpoint =
      Breakpoint.iOS(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint windowsBreakpoint =
      Breakpoint.windows(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint macOSBreakpoint =
      Breakpoint.macOS(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint linuxBreakpoint =
      Breakpoint.linux(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint webBreakpoint =
      Breakpoint.web(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
}
```

Breakpoint is a class shipped with liquid to specify platform specific breakpoints.

##### Named constructors of Breakpoint class are:

- Breakpoint.android();
- Breakpoint.iOS();
- Breakpoint.windows();
- Breakpoint.macOS();
- Breakpoint.linux();
- Breakpoint.web();

## Implemantation

Liquid ships with two main classes:

- Responsive( );
- Adaptive( );

#### Responsive class

Responsive can be used when the property of the widget is same across all device types.

##### Example:

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Responsive(Breakpoints.webBreakpoint,
                xs: Colors.red,
                sm: Colors.green,
                md: Colors.orange,
                lg: Colors.purple,
                xl: Colors.pink)
            .resolve(context),
        title: const Text('Liquid Demo'),
      ),
      body: const Center(
        child: Text('Liquid'),
      ),
    );
  }
}
```

Responsive class accepts a Breakpoint (mentioned in breakpoints.dart) and property value for each breakpoint.

#### Adaptive class

To have a fine control over platform specific UI, use the Adaptive class.

##### Example:

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Adaptive([
          BreakpointAndProps(Breakpoints.webBreakpoint,
              xs: Colors.amber,
              sm: Colors.green,
              md: Colors.blue,
              lg: Colors.orange,
              xl: Colors.black),
          BreakpointAndProps(Breakpoints.iosBreakpoint,
              xs: Colors.amber,
              sm: Colors.green,
              md: Colors.blue,
              lg: Colors.orange,
              xl: Colors.black),
        ]).resolve(context),
        title: const Text('Liquid Demo'),
      ),
      body: const Center(
        child: Text('Liquid'),
      ),
    );
  }
}
```

Adaptive class accepts a list of BreakpointAndProps.

#### BreakpointAndProps class

BreakpointAndProps class accepts a Breakpoint (mentioned in breakpoints.dart) and breakpoint specific values.

#### ❗️ Both Responsive and Adaptive class should call the resolve() function.

## Hi, I'm Chirag Chandrashekhar! 👋

I am a fullstack web and mobile application developer.

[GitHub](https://github.com/cchirag)

## License

[MIT](https://choosealicense.com/licenses/mit/)

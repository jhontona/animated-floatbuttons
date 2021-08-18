# animated_floating_buttons

This package is based on Agung Surya's tutorial. You can visit his post for more technical information about the package.
[https:&#x2F;&#x2F;medium.com&#x2F;@agungsurya&#x2F;create-a-simple-animated-floatingactionbutton-in-flutter-2d24f37cfbcc](https://medium.com/@agungsurya/create-a-simple-animated-floatingactionbutton-in-flutter-2d24f37cfbcc)

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.io/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

## Screenshots

<img src="https://user-images.githubusercontent.com/44735062/129905710-c5a402f3-bf1d-44aa-87ef-689be3acb55a.gif" height="400em">



## Usage

To use this plugin:

In your flutter project add the dependency:

```yalm
dependencies:
    ...
    animated_floating_buttons: ^0.0.1
```

## Example

```dart
//Import package
import 'package:animated_floating_buttons/animated_floating_buttons.dart';
...
      /// when you want to close the menu you have to create 
      final GlobalKey<AnimatedFloatingActionButtonState> key =GlobalKey<AnimatedFloatingActionButtonState>();
      /// and then assign it to the our widget library
Widget float1() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "btn1",
        tooltip: 'First button',
        child: Icon(Icons.add),
      ),
    );
}

Widget float2() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        heroTag: "btn2",
        tooltip: 'Second button',
        child: Icon(Icons.add),
      ),
    );
}
...
Scaffold(
    floatingActionButton: AnimatedFloatingActionButton(
        //Fab list
        fabButtons: <Widget>[
            float1(), float2()
        ],
        key : key,
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.menu_close //To principal button
    ),
)
```
Complete [example here](https://github.com/nabil-hfz/animated-floatbuttons/tree/master/example)

## Issues

    Be aware that you have to pass heroTag parameter to every new fab you create 
    Otherwise you will get an exciption.



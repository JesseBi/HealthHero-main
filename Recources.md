## Pitfalls encountered

- [Windows desktop.ini blocking Android assebling](https://stackoverflow.com/questions/33575372/how-to-stop-google-drive-creating-desktop-ini-files/34318711)
- [Firebase module is incompatible with Graddle 6.7](https://stackoverflow.com/questions/67448034/module-was-compiled-with-an-incompatible-version-of-kotlin-the-binary-version)


## References

### Flutter

- [Tutorial: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Lab: Write your first Flutter app: Part 1](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1)
- [Lab: Write your first Flutter app: Part 2](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

### Dart

- [Dart Programming in 4 hours | Full beginners tutorial](https://www.youtube.com/watch?v=5xlVP04905w)
- [Flutter2.0 Beginner tutorial 2021 CN](https://www.bilibili.com/video/BV1ep4y147Q3?p=4)
- [Flutter-learning Dart CN](https://github.com/AweiLoveAndroid/Flutter-learning/blob/master/readme/Dart%E8%AF%AD%E6%B3%95.md)

### Firebase

- [Flutter>Backend>Firebase](https://flutter.dev/docs/development/data-and-backend/firebase)
- [FlutterFire Online Docs](https://firebase.flutter.dev/docs/overview)
- [Lab: Get to know Firebase for Flutter](https://firebase.google.com/codelabs/firebase-get-to-know-flutter)

### Release an App

- [Build and release an Android app](https://flutter.dev/docs/deployment/android)

### Styles

- [Effective Dart - Style #Naming conventions](https://dart.dev/guides/language/effective-dart/style#identifiers)

## 3rd Party Packages

- Prefer very_good_analysis over flutter_lints: Our team are pretty lack of experience in Dart. 
  Better stick to the best practices.
  - [Flutter Linting Comparison](https://rydmike.com/blog_flutter_linting) by [
Mike Rydstrom](https://twitter.com/rydmike/status/1420191880080502797)
  - [Introducing very-good-analysis](https://verygood.ventures/blog/introducing-very-good-analysis)
- Use Platform-aware widgets [Flutter Platform Widgets](https://github.com/stryder-dev/flutter_platform_widgets)
- 


For the most part, check [pubspec.yaml](pubspec.yaml)

## Other cool tips

- [Top 30 Flutter Tips and Tricks](https://www.youtube.com/watch?v=5vDq5DXXxss)

## Research: Other Technology Decisions
Boilerplate / Examples:

- [create_flutter_provider_app](https://github.com/KenAragorn/create_flutter_provider_app) [224 stars] Good feature scope, Great documentation
- [acelords/flutter-starter-kit](https://github.com/acelords/flutter-starter-kit) [177 stars]
- [Very Good CLI](https://github.com/VeryGoodOpenSource/very_good_cli) [879 stars]Need to install the cli first, looks very promising, but from a commercial-centric company
- [zubairehman/flutter-boilerplate-project](https://github.com/zubairehman/flutter-boilerplate-project) [1.4K stars] Too powerful
- [flutter-examples](https://github.com/nisrulz/flutter-examples) [5.7k stars] Relevant but a bit too basic.
- [Flutter-learning](https://github.com/AweiLoveAndroid/Flutter-learning) [4.9k]

Libraries:
- [Dio](https://github.com/flutterchina/dio) A powerful Http client
- [flutter-in-action book](https://github.com/flutterchina/flutter-in-action) A Flutter book in Chinese

UI kits:
-[Best-Flutter-UI-Templates](https://github.com/mitesh77/Best-Flutter-UI-Templates) [12.4K stars]

State Management
- [Provider](https://pub.dev/packages/provider) Primiarily a DI(Dependency Injection) framework, Recommended by Google, similar to React Context. Easy to scale up to BLoC when necessary.
  - Goes hand in hand with [ChangeNotifier](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple)
- [BLoC](https://bloclibrary.dev/#/gettingstarted?id=overview) Loved by the community, evolve vibrantly. But many found it not well designed(at least for the previous versions)
  - [Bloc vs MobX](https://blog.flutterando.com.br/analyzing-bloc-and-mobx-7118053e913a#1a65) BLoc write too much boilerplate code
- [Fish Redux]() Loved by Redux users, verbose
- [Mobx]() Well tested pattern, simple yet powerful
- [Event bus]() Meh~
// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDosdc5TiwLYdsEb7MThg4VV4QUw18c97o',
    appId: '1:24600594255:web:e6dc8fb25013dee8e8673a',
    messagingSenderId: '24600594255',
    projectId: 'fluttertest-4ecbd',
    authDomain: 'fluttertest-4ecbd.firebaseapp.com',
    storageBucket: 'fluttertest-4ecbd.appspot.com',
    measurementId: 'G-F2CLFY0EC6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZW9qjaoOYqfy845-LzgLUJKOYldxqjW4',
    appId: '1:24600594255:android:b17af8ea37b22b81e8673a',
    messagingSenderId: '24600594255',
    projectId: 'fluttertest-4ecbd',
    storageBucket: 'fluttertest-4ecbd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3Ira0koqFvFYoeg46KTs9ONdS04E-CLg',
    appId: '1:24600594255:ios:cbf5c5d60e0aff2ae8673a',
    messagingSenderId: '24600594255',
    projectId: 'fluttertest-4ecbd',
    storageBucket: 'fluttertest-4ecbd.appspot.com',
    iosClientId: '24600594255-2e653kj0mathcam2orgu4uieget044i4.apps.googleusercontent.com',
    iosBundleId: 'com.example.toDoListFlutter',
  );
}

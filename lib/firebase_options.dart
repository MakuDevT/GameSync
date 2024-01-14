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
        return macos;
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
    apiKey: 'AIzaSyBnVNVKzt0se8k1QUAW96vy1w5Y3ECAEyc',
    appId: '1:831227877247:web:5b642b053d9f013cffec4a',
    messagingSenderId: '831227877247',
    projectId: 'gamesync-9aa4c',
    authDomain: 'gamesync-9aa4c.firebaseapp.com',
    storageBucket: 'gamesync-9aa4c.appspot.com',
    measurementId: 'G-W9JBGGGLTQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAydy8beGjlSaVPMnUlOHngFnIn5XWcjBw',
    appId: '1:831227877247:android:24f117f5dfa86e9effec4a',
    messagingSenderId: '831227877247',
    projectId: 'gamesync-9aa4c',
    storageBucket: 'gamesync-9aa4c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfqDv0l-oFaYENBEzTZYHdtMyEVziryys',
    appId: '1:831227877247:ios:502fa225c3daf6d8ffec4a',
    messagingSenderId: '831227877247',
    projectId: 'gamesync-9aa4c',
    storageBucket: 'gamesync-9aa4c.appspot.com',
    iosBundleId: 'com.example.gamesync',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBfqDv0l-oFaYENBEzTZYHdtMyEVziryys',
    appId: '1:831227877247:ios:6f1f493eb16a77b2ffec4a',
    messagingSenderId: '831227877247',
    projectId: 'gamesync-9aa4c',
    storageBucket: 'gamesync-9aa4c.appspot.com',
    iosBundleId: 'com.example.gamesync.RunnerTests',
  );
}

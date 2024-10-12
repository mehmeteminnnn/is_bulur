// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyDur1aE7P0bB0uFsLCJFvs_afSsX_DgIJw',
    appId: '1:332479069578:web:6a495a2e12820617a41c73',
    messagingSenderId: '332479069578',
    projectId: 'is-bulur',
    authDomain: 'is-bulur.firebaseapp.com',
    storageBucket: 'is-bulur.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVecbOWIF8bAfMlWB0LmKL2RFZrprgRvE',
    appId: '1:332479069578:android:26b88f6f8ff4301da41c73',
    messagingSenderId: '332479069578',
    projectId: 'is-bulur',
    storageBucket: 'is-bulur.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClDYGAf7MBHsE4v7IJgb-r5vptjMquYTM',
    appId: '1:332479069578:ios:877ee45e45268172a41c73',
    messagingSenderId: '332479069578',
    projectId: 'is-bulur',
    storageBucket: 'is-bulur.appspot.com',
    iosBundleId: 'com.example.isci',
  );
}

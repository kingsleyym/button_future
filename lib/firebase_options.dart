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
    apiKey: 'AIzaSyCzOIGBBO3pUhdRXQ3JKLXmLXUsQPi2kT8',
    appId: '1:789400842347:web:ccaea509f1ed6e7042812e',
    messagingSenderId: '789400842347',
    projectId: 'blenderlearnapp',
    authDomain: 'blenderlearnapp.firebaseapp.com',
    storageBucket: 'blenderlearnapp.appspot.com',
    measurementId: 'G-8R99H4YWX1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVopKDAgV-4nCUYhVpSqw2-j52xorIqXU',
    appId: '1:789400842347:android:f5345c1ca0e9d99642812e',
    messagingSenderId: '789400842347',
    projectId: 'blenderlearnapp',
    storageBucket: 'blenderlearnapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvjJhxP_uU8pgEJivFL9XVKCJny1N6fvA',
    appId: '1:789400842347:ios:9692eed5e4788f0d42812e',
    messagingSenderId: '789400842347',
    projectId: 'blenderlearnapp',
    storageBucket: 'blenderlearnapp.appspot.com',
    iosClientId: '789400842347-ii5tpn7r4bf7nat1v7ngrmd9td45tqm4.apps.googleusercontent.com',
    iosBundleId: 'com.example.blendertut',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvjJhxP_uU8pgEJivFL9XVKCJny1N6fvA',
    appId: '1:789400842347:ios:9692eed5e4788f0d42812e',
    messagingSenderId: '789400842347',
    projectId: 'blenderlearnapp',
    storageBucket: 'blenderlearnapp.appspot.com',
    iosClientId: '789400842347-ii5tpn7r4bf7nat1v7ngrmd9td45tqm4.apps.googleusercontent.com',
    iosBundleId: 'com.example.blendertut',
  );
}

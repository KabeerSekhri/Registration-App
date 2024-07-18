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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDzi6RXgZejdNQn2ZY_oaW4eq3Y-in3osA',
    appId: '1:117914086933:web:bd0f96e8d3d5c22b61e81c',
    messagingSenderId: '117914086933',
    projectId: 'app-registration-bb3ca',
    authDomain: 'app-registration-bb3ca.firebaseapp.com',
    storageBucket: 'app-registration-bb3ca.appspot.com',
    measurementId: 'G-5Q3P12Q03K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQB2vOt7e4YcZbGIBM9H1wXQcoAkERw5Y',
    appId: '1:117914086933:android:75f6ddfa60561bdc61e81c',
    messagingSenderId: '117914086933',
    projectId: 'app-registration-bb3ca',
    storageBucket: 'app-registration-bb3ca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDorfo-WuZqThxAScq5Cnl23CL4sYYHCzc',
    appId: '1:117914086933:ios:3842084e6330410f61e81c',
    messagingSenderId: '117914086933',
    projectId: 'app-registration-bb3ca',
    storageBucket: 'app-registration-bb3ca.appspot.com',
    iosBundleId: 'com.example.flutterRegistration',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDorfo-WuZqThxAScq5Cnl23CL4sYYHCzc',
    appId: '1:117914086933:ios:3842084e6330410f61e81c',
    messagingSenderId: '117914086933',
    projectId: 'app-registration-bb3ca',
    storageBucket: 'app-registration-bb3ca.appspot.com',
    iosBundleId: 'com.example.flutterRegistration',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDzi6RXgZejdNQn2ZY_oaW4eq3Y-in3osA',
    appId: '1:117914086933:web:70cad7834f171f1a61e81c',
    messagingSenderId: '117914086933',
    projectId: 'app-registration-bb3ca',
    authDomain: 'app-registration-bb3ca.firebaseapp.com',
    storageBucket: 'app-registration-bb3ca.appspot.com',
    measurementId: 'G-W4RTJKG5WN',
  );
}

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
    apiKey: 'AIzaSyBRiWtp_IkzuNVdZ1hiBEg0gPX7e8zgfoQ',
    appId: '1:883544756033:web:8f19c9023097e452f95bc0',
    messagingSenderId: '883544756033',
    projectId: 'stadtplan-app',
    authDomain: 'stadtplan-app.firebaseapp.com',
    storageBucket: 'stadtplan-app.firebasestorage.app',
    measurementId: 'G-QK7DFWY7LR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAFoECHTc9r3Du7Vsio8EUcNMDqBwCpMk',
    appId: '1:883544756033:android:b00bbfd6e705c32df95bc0',
    messagingSenderId: '883544756033',
    projectId: 'stadtplan-app',
    storageBucket: 'stadtplan-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfZJiBfDBYtlVbubQuWO1cdvKWaQyoCUM',
    appId: '1:883544756033:ios:42ee14bc2934a081f95bc0',
    messagingSenderId: '883544756033',
    projectId: 'stadtplan-app',
    storageBucket: 'stadtplan-app.firebasestorage.app',
    iosBundleId: 'com.example.stadtplanMobileApp',
  );
}

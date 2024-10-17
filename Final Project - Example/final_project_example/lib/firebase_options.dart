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
    apiKey: 'AIzaSyAYs1tgojs-KNpvrN9IlmfSjnAV_t5LLas',
    appId: '1:856039071556:web:e3c4dbaa6d81fc29e68111',
    messagingSenderId: '856039071556',
    projectId: 'movieapp-d491b',
    authDomain: 'movieapp-d491b.firebaseapp.com',
    storageBucket: 'movieapp-d491b.appspot.com',
    measurementId: 'G-VP5PYX1QCF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBp__9SDHCcfBFix3D48_6DC9TiU8T3gaM',
    appId: '1:856039071556:android:f08883a39c905d84e68111',
    messagingSenderId: '856039071556',
    projectId: 'movieapp-d491b',
    storageBucket: 'movieapp-d491b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA80BTw7kyEwawhlMd2JCdjbvViW7R_UoE',
    appId: '1:856039071556:ios:ecb52ec153324ebfe68111',
    messagingSenderId: '856039071556',
    projectId: 'movieapp-d491b',
    storageBucket: 'movieapp-d491b.appspot.com',
    iosBundleId: 'com.example.movieApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA80BTw7kyEwawhlMd2JCdjbvViW7R_UoE',
    appId: '1:856039071556:ios:ecb52ec153324ebfe68111',
    messagingSenderId: '856039071556',
    projectId: 'movieapp-d491b',
    storageBucket: 'movieapp-d491b.appspot.com',
    iosBundleId: 'com.example.movieApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAYs1tgojs-KNpvrN9IlmfSjnAV_t5LLas',
    appId: '1:856039071556:web:0c5d01d2083abfe2e68111',
    messagingSenderId: '856039071556',
    projectId: 'movieapp-d491b',
    authDomain: 'movieapp-d491b.firebaseapp.com',
    storageBucket: 'movieapp-d491b.appspot.com',
    measurementId: 'G-7772SV5WHC',
  );
}
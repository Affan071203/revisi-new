
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBbTBcqX_h0213rGkZ9y19LzHfth_L4umQ',
    appId: '1:405979496573:web:135bd04abed82bfc7f7114',
    messagingSenderId: '405979496573',
    projectId: 'coba-5ff55',
    authDomain: 'coba-5ff55.firebaseapp.com',
    databaseURL: 'https://coba-5ff55-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'coba-5ff55.appspot.com',
    measurementId: 'G-JRV8L1Z8XL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2BQTy6UgE0OhJ8PypNySfPecrbPgw7w0',
    appId: '1:405979496573:android:f8e2113c50831a457f7114',
    messagingSenderId: '405979496573',
    projectId: 'coba-5ff55',
    databaseURL: 'https://coba-5ff55-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'coba-5ff55.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC712kiCqdDlhZDOVQRlHJsLqpT-fhHLj4',
    appId: '1:405979496573:ios:afb73849b18b5ee57f7114',
    messagingSenderId: '405979496573',
    projectId: 'coba-5ff55',
    databaseURL: 'https://coba-5ff55-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'coba-5ff55.appspot.com',
    iosClientId: '405979496573-dgsb22th91gb6v4rbrorv0pu8o411non.apps.googleusercontent.com',
    iosBundleId: 'com.example.coba',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC712kiCqdDlhZDOVQRlHJsLqpT-fhHLj4',
    appId: '1:405979496573:ios:afb73849b18b5ee57f7114',
    messagingSenderId: '405979496573',
    projectId: 'coba-5ff55',
    databaseURL: 'https://coba-5ff55-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'coba-5ff55.appspot.com',
    iosClientId: '405979496573-dgsb22th91gb6v4rbrorv0pu8o411non.apps.googleusercontent.com',
    iosBundleId: 'com.example.coba',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBbTBcqX_h0213rGkZ9y19LzHfth_L4umQ',
    appId: '1:405979496573:web:135bd04abed82bfc7f7114',
    messagingSenderId: '405979496573',
    projectId: 'coba-5ff55',
    authDomain: 'coba-5ff55.firebaseapp.com',
    databaseURL: 'https://coba-5ff55-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'coba-5ff55.appspot.com',
    measurementId: 'G-JRV8L1Z8XL',
  );

}
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

FirebaseOptions firebaseOptions = Platform.isAndroid
  ? const FirebaseOptions(
    apiKey: 'AIzaSyAozzVsMP8JkDzr19mUVfJTczlqfE0CRKA',
    appId: '1:1089791308320:android:f19f86ce48f8d819ae0245',
    messagingSenderId: '1089791308320',
    projectId: 'production-94754')
    : const FirebaseOptions(
    apiKey: 'AIzaSyCBannkIF7tPovmb20hM62JUybP1zIh7Jw',
    appId: '1089791308320:ios:cc19a180e5a49fe7ae0245',
    messagingSenderId: '1089791308320',
    projectId: 'production-94754');
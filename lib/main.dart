import 'package:educational_app_flutter/page/home.dart';
import 'package:educational_app_flutter/page/home_Profile.dart';
import 'package:educational_app_flutter/page/single_profile.dart';
import 'package:educational_app_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    // ignore: unnecessary_new
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Educational App',

      // initialRoute: '',
      // routes: {
      //   '': (context) => Home(),
      //   'message': (context) => MessagePage(),
      //   'single_profile': (context) => SingleProfile(),
      //   'contact_message': (context) => ContactMessages(),
      // },
      home: const SingleProfile(),
    ),
  );
}

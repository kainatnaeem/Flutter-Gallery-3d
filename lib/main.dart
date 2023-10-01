import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';

import 'gallery_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Gallery 3d',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home: GalleryScreen(),
    );
  }
   

}

import 'package:flutter/material.dart';

class MyImageAssets extends StatelessWidget {

  final String path;
  final double width;
  final double height;

  const MyImageAssets(
     this.path,
     this.width,
     this.height);


  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }

}
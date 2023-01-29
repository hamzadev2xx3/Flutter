// ignore: file_names
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/consts/strings.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// ignore: non_constant_identifier_names
Widget HomeCard({width, height, image}) {
  return Expanded(
    child: SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'lib/icons/pray.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 0,
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.only(right: 190),
              child: titleRadio.text.white.bold.size(17).make(),
            ),
          ),
          Positioned(
            top: 45,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: const EdgeInsets.only(right: 198),
              child: titleSkyline.text.white.bold.size(10).make(),
            ),
          ),
          const Positioned(
            top: 60,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: EdgeInsets.only(right: 250),
              child: SpinKitDualRing(
                color: Colors.deepOrange,
                size: 10,
              ),
            ),
          ),
          Positioned(
            top: 83,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: const EdgeInsets.only(right: 210),
              child: livetext.text.white.bold.size(10).make(),
            ),
          ),
          Positioned(
            top: 83,
            right: 0,
            bottom: 5,
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: sharetext.text.white.bold.size(10).make(),
            ),
          ),
        ],
      ),
    ).box.hexColor('#474747').size(width, height).rounded.make(),
  );
}

//"lib/icons/pray.png",
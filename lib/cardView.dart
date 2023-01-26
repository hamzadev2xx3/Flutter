import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/consts/strings.dart';

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
              padding: EdgeInsets.only(right: 200),
              child: titleRadio.text.white.bold.size(15).make(),
            ),
          ),
        ],
      ),
    ).box.shadowSm.size(width, height).rounded.make(),
  );
}

//"lib/icons/pray.png",
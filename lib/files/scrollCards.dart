import 'package:flutter/material.dart';

List<String> imgList = [
  "lib/icons/img1.jpeg", 
  "lib/icons/img2.jpeg",
  "lib/icons/img3.jpeg",
  "lib/icons/img4.jpeg",
  "lib/icons/img5.jpeg",
  "lib/icons/img6.jpeg",
  "lib/icons/img7.jpeg", 
  ];

List<Widget> cardList = List.generate(7, (index) {
  return cardScrolls(imgList[index]);
});

Widget cardScrolls(String image) {
  return SizedBox(
    width: 350, height: 200,
    //height: 200,
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        child: Wrap(
          children: <Widget>[
           // Image.network(image),
          Image.asset(image,fit: BoxFit.cover),
          ],
        ),
      ),
    ),
  );
}

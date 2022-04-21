import 'dart:math';

import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  generateRandomColor() {
    return Color.fromRGBO(
        Random().nextInt(100), Random().nextInt(100), Random().nextInt(100), 1);
  }

  generateContainerWithRandomColor(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 4,
      color: generateRandomColor(),
    );
  }

  generateColumnWith4Container(BuildContext context) {
    return Column(
      children: [
        generateContainerWithRandomColor(context),
        generateContainerWithRandomColor(context),
        generateContainerWithRandomColor(context),
        generateContainerWithRandomColor(context),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            generateColumnWith4Container(context),
            generateColumnWith4Container(context),
            generateColumnWith4Container(context),
            generateColumnWith4Container(context),
          ],
        ),

        // child: Stack(children: [
        //   Container(
        //       margin: EdgeInsets.all(40.0),
        //       decoration: BoxDecoration(
        //           color: Colors.black, borderRadius: BorderRadius.circular(5)),
        //       child: Container(
        //         margin: EdgeInsets.all(40.0),
        //         decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(5)),
        //         child: Container(
        //           margin: EdgeInsets.all(40.0),
        //           decoration: BoxDecoration(
        //               color: Colors.black,
        //               borderRadius: BorderRadius.circular(5)),
        //         ),
        //       )),
        // ]),

        // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        // alignment: Alignment.center,
        // color: Colors.white,
      ),
    );
  }
}

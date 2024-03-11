import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // log(height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 200,
            height: height * .2,
            color: Colors.amber,
          ),
          Container(
            width: 200,
            height: height * .2,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: height * .2,
            color: Colors.black,
          ),
        ],
      ),
      //  Center(
      //   child: Text("Hellow Worrld"),
      // ),
    );
  }
}

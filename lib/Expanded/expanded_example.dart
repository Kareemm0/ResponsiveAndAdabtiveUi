import 'package:flutter/material.dart';

class ExpandedWidgtExample extends StatelessWidget {
  const ExpandedWidgtExample({super.key});

  @override
  Widget build(BuildContext context) {
    //!var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Flexible(
            child: FittedBox(
              child: Icon(
                Icons.ac_unit,
                size: 300,
              ),
            ),
          ),
          // Expanded(
          //   child:
          Container(
            //     //!  height: height / 3,
            //!  height: 150,
            height: 150,
            color: Colors.black12,
          ),
          // ),
          // Expanded(
          //   child:
          Container(
            height: 150,
            //     //!  height: height / 3,
            //     //! height: 150,
            color: Colors.green,
          ),
          // ),
          // Expanded(
          //   child:
          Container(
            height: 150,
            // ! height: height / 3,
            //     //!  height: 150,
            color: Colors.yellow,
          ),
          // )
        ],
      ),
    );
  }
}

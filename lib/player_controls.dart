import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class PllayerControls extends StatelessWidget {
  const PllayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Controls(icon: Icons.repeat_rounded),
          Controls(icon: Icons.skip_previous_rounded),
          PlayerControl(),
          Controls(icon: Icons.skip_next_rounded),
          Controls(icon: Icons.shuffle_rounded),
        ],
      ),
    );
  }
}

class PlayerControl extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(child: Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: darkPrimaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: darkPrimaryColor.withOpacity(0.5),
                      offset: Offset(5, 10),
                      spreadRadius: 3,
                      blurRadius: 10),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -4),
                      spreadRadius: -2,
                      blurRadius: 20)
                ],
            ),
            child: Stack(
              children: [
                Center(child: Container(
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(color: darkPrimaryColor,shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: darkPrimaryColor.withOpacity(0.5),
                      offset: Offset(5, 10),
                      spreadRadius: 3,
                      blurRadius: 10,
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-3, -4),
                        spreadRadius: -2,
                        blurRadius: 20
                    ),
                  ]
                  ),
                ),)
              ],
            ),
          ),),
          Center(child: Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle
            ),
            child: Center(child: Icon(Icons.play_arrow, size: 50, color: darkPrimaryColor,)),
          ),),
        ],
      ),
    );
  }
}


class Controls extends StatelessWidget {

  final IconData icon;

  const Controls({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
        BoxShadow(
        color: darkPrimaryColor.withOpacity(0.5),
        offset: Offset(5, 10),
        spreadRadius: 3,
        blurRadius: 10,
      ),
      BoxShadow(
          color: Colors.white,
          offset: Offset(-3, -4),
          spreadRadius: -2,
          blurRadius: 20
      ),
      ],),
      child: Stack(
        children: [
          Center(child: Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: darkPrimaryColor.withOpacity(0.5),
                  offset: Offset(5, 10),
                  spreadRadius: 3,
                  blurRadius: 10,
                ),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(-3, -4),
                    spreadRadius: -2,
                    blurRadius: 20
                ),
              ],
                color: darkPrimaryColor,
                shape: BoxShape.circle
            ),
          ),),
          Center(child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle
            ),
            child: Center(child: Icon(icon, size: 30, color: darkPrimaryColor,)),
          ),),
        ],
      ),
    );
  }
}

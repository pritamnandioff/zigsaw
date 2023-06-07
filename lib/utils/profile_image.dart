import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 50.0,
      width: 90,
      child: Stack(
        children: const <Widget>[
          Icon(Icons.person_outline,
              size: 36.0, color: Color.fromRGBO(218, 165, 32, 1.0)),
          Positioned(
            left: 20.0,
            child: Icon(
              Icons.person_outline,
              size: 36.0,
              color: Color.fromRGBO(218, 165, 32, 1.0),
            ),
          ),
          Positioned(
            left: 40.0,
            child: Icon(Icons.person_outline,
                size: 36.0, color: Color.fromRGBO(218, 165, 32, 1.0)),
          )
        ],
      ),
    );
  }
}

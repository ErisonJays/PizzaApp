import 'package:flutter/material.dart';

import '../Screen/vegetarianascreen.dart';


class VegetarianaBoton extends StatelessWidget {
  const VegetarianaBoton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: Image.network('https://www.silviocicchi.com/pizzachef/wp-content/uploads/2015/02/v2.jpg',
          width: double.infinity, height: 200, fit: BoxFit.cover),
          iconSize: 50,
          onPressed: () {
            Navigator.push(context,
       MaterialPageRoute(builder: (context) => VegetarianaScreen()));
          }, );
  }
}

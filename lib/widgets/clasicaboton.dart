import 'package:flutter/material.dart';

import '../Screen/clasicascreen.dart';


class ClasicaBoton extends StatelessWidget {
  const ClasicaBoton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
    icon: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3yUC2BqMpx9KsnwO5kP4H8JAG4XX62PfaIA&s',
    width: double.infinity, height: 200, fit: BoxFit.cover),
    iconSize: 50,
    
    onPressed: () {
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => ClasicaScreen()),
      );
    },
    
    );
  }
}


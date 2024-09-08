
import 'package:flutter/material.dart';
import '../Estilos/estilos.dart';
import '../widgets/imagecard.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza App", style: titulo,  ),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ImagenCard(),
         
        ),
      ),
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pizza_app/Screen/vegetarianascreen.dart';
import '../Screen/clasicascreen.dart';
import '../Screen/pedidoscreen.dart';
import '../estilos/estilos.dart';
import 'clasicaboton.dart';
import 'vegetarianaboton.dart';


class ImagenCard extends StatelessWidget {
  const ImagenCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    
    return Column(
      children: [
    const Text("Elige tu pizza favorita", style: subtitulos ),
         
       const  Text("Pizza Tradicional",style: textos ),
       ClasicaBoton(),
     const Text("Pizza Vegetariana",style: textos ),
 VegetarianaBoton(),
      
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Image.network("https://st4.depositphotos.com/24038622/27074/v/950/depositphotos_270740244-stock-illustration-pizza-stop-sign-cartoon-illustration.jpg", 
           width: 160, height: 160, fit: BoxFit.cover),
        ),
        
        
      ],
    );
    
  }
}


import 'package:flutter/material.dart';

import '../estilos/estilos.dart';


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
       IconButton(
       icon: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3yUC2BqMpx9KsnwO5kP4H8JAG4XX62PfaIA&s',
       width: double.infinity, height: 200, fit: BoxFit.cover),
       iconSize: 50,
       onPressed: () {
        print("Pizza Tradicional");
       },
       
),
     const Text("Pizza Vegetariana",style: textos ),
 IconButton(
       icon: Image.network('https://www.silviocicchi.com/pizzachef/wp-content/uploads/2015/02/v2.jpg',
       width: double.infinity, height: 200, fit: BoxFit.cover),
       iconSize: 50,
       onPressed: () {
        print("Pizza Vegetariana");
       }, ),
      
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Image.network("https://st4.depositphotos.com/24038622/27074/v/950/depositphotos_270740244-stock-illustration-pizza-stop-sign-cartoon-illustration.jpg", 
           width: 160, height: 160, fit: BoxFit.cover),
        ),
        
        
      ],
    );
    
  }
}



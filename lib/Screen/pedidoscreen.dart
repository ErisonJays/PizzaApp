import 'package:flutter/material.dart';
import 'package:pizza_app/screen/homescreen.dart';

import '../estilos/estilos.dart';

class PedidoScreen extends StatelessWidget {
  const PedidoScreen({
    super.key,
    required this.ingrediente,
  });

  final String ingrediente;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza App", style: titulo,  ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Center(
            child: Column(
                 //  mainAxisAlignment: MainAxisAlignment.spaceAround, 
              //Alinear y separar los elementos de la fila
              children:[
                const Text("Su orden",style: subtitulos),
             
             const Text("Los ingredientes de su pizza son:",style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
               Text(" *$ingrediente \n +Mozzarella \n +Tomate",style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),),
               
                TextButton (
                  onPressed: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context) => HomeScreen()));
                  }, child: const Text("Home", style: botones, )), 
                  
            
                  Image.network("https://thumbs.dreamstime.com/b/caja-de-env%C3%ADo-pizza-personaje-dibujos-animados-pizzeria-orden-ilustraci%C3%B3n-entrega-courier-casco-con-repartidor-que-lleva-comida-218968479.jpg",
                  width: double.infinity, height: 300,)
                  
                  ],
            
            
            ),
          ),
        ),
      ),);
      
    
  }
}

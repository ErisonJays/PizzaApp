import 'package:flutter/material.dart';

import '../estilos/estilos.dart';
import 'pedidoscreen.dart';

class VegetarianaScreen extends StatefulWidget {
  const VegetarianaScreen({
    super.key,
  });

  @override
  State<VegetarianaScreen> createState() => _ClasicaScreenState();
}



class _ClasicaScreenState extends State<VegetarianaScreen> {

  
  @override
  Widget build(BuildContext context) {

      void IrPedidoScreen( ingredientValor){
  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => PedidoScreen(ingrediente: ingredientValor,)),
    
                        );
 }
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza App", style: titulo,  ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
               //  mainAxisAlignment: MainAxisAlignment.spaceAround, 
            //Alinear y separar los elementos de la fila
            children:[
              const Text("Pizza Vegetariana",style: subtitulos),
           const Text("Elige el ingrediente de tu preferencia",style: TextStyle(
            fontSize: 20),),
              TextButton (
                onPressed: (){
                  IrPedidoScreen("Pimiento");
                }, child: const Text("Pimiento", style: botones,)),
              TextButton (
                onPressed: (){
                  IrPedidoScreen("Tofu");
                }, child: const Text("Tofu", style: botones, )), 
                

                Image.network("https://i.blogs.es/4a627f/1304330927_20dc6f5311/450_1000.webp",
                width: double.infinity, height: 300,)
                
                ],
          
          
          ),
        ),
      ),);
      
    
  }
}

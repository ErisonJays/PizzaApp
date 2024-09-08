import 'package:flutter/material.dart';
import 'package:pizza_app/Screen/pedidoscreen.dart';

import '../estilos/estilos.dart';

class ClasicaScreen extends StatelessWidget {
  const ClasicaScreen({
    super.key,
  });

  //  bool _selectedBoton = false;
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
              const Text("Pizza Clasica",style: subtitulos),
           const Text("Elige el ingrediente de tu preferencia",style: TextStyle(
            fontSize: 20),),
              TextButton (
                onPressed: (){
                  
                 //pasar valor a la siguiente pagina
                  IrPedidoScreen("Peperoni");
                  
                }, child: Text("Peperoni", style: botones,)),
              TextButton (
                onPressed: (){

                  //pasar valor a la siguiente pagina
                  IrPedidoScreen("Jamon");
                  
                }, child:  Text("Jamon", style: botones, )), 
                TextButton (
                onPressed: (){

                  //pasar valor a la siguiente pagina
                  IrPedidoScreen("Salmon");
                  
                }, child:  Text("Salmon", style: botones,)), 

                Image.network("https://st2.depositphotos.com/1177973/7397/i/950/depositphotos_73971353-stock-photo-food-ingredients-for-pizza-on.jpg",
                width: double.infinity, height: 300,)
                
                ],
          
          
          ),
        ),
      ),);
      
    
  }
}

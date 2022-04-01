
import 'package:flutter/material.dart';
import 'package:notas/ui/widgets/buttonWidget.dart';

class InitialScreen extends StatelessWidget {
  InitialScreen({Key? key}) : super(key: key);
  final orders = [
    "orden1",
    "matricula1",
    "descripcion1",
    "suscriptor1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body:   
      GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 15,
        mainAxisSpacing: 5,
        childAspectRatio: 2/1), 
        itemCount: orders.length,
        itemBuilder: (context,index){
          final order = orders[index];
          return _ItemOrders(order: order);
        })
    );
  }
}

class _ItemOrders extends StatelessWidget {
  const _ItemOrders({Key? key, this.order}) : super(key: key);
  final order;
  
  @override
  Widget build(BuildContext context) {
    
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(15) ),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                order,
                style: Theme.of(context).textTheme.headline6,)
              ),
              Expanded(
                flex: 2,
                child:Column(
                  children: [
                    Text(order,
                    style: Theme.of(context).textTheme.bodyText2,),
                    const SizedBox(height: 5,),
                    Text(order,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,),
                  ],
                ), 
              ),
                        
            
            InkWell(
              onTap: () => print("click"),
              child: getBigButton(context: context,text: 'Ejecutar',size: MediaQuery.of(context).size.width,padding: 8.0))
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:notas/ui/widgets/buttonWidget.dart';
import 'package:notas/ui/widgets/textFieldWidget.dart';
import 'package:notas/ui/widgets/theme.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var logoSize = 60.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final moreSize = 50.0;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child:  Stack(
                  children: [
                    Positioned(
                      bottom: logoSize,
                      left: -moreSize/2,
                      right: -moreSize/2,
                      height: width + moreSize,
                      child: Container(
                        decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.5,
                        1.0
                      ],
                      colors: ColorGradient),
                          color: Colors.red,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(size.width/2)
                          )
                        ),
                      ),
                      ),
                    Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                          backgroundColor: Theme.of(context).canvasColor,
                          radius: logoSize,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset('assets/gestor/logo_app.png')) 
                        )),
                  ],
                )
            ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView (
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30),
                    Text('Iniciar Sesión', 
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold, ),
                      textAlign: TextAlign.center,
                      ),
                    const SizedBox(height: 20),
                    getMainLabel(context, 'Username', TextAlign.start),
                   getMainTextField(context, 'Username',Icons.person_outline),
                        const SizedBox(height: 10),
                         getMainLabel(context, 'Password', TextAlign.start),
                   getMainTextField(context, 'Password',Icons.lock_outline),
                        const SizedBox(height: 10),
                        getMainLabel(context, 'Codigo', TextAlign.start),
                   getMainTextField(context, 'Codigo',Icons.playlist_add_check_circle_outlined),
                        const SizedBox(height: 10),
                        getMainLabel(context, 'Cargar ordenes', TextAlign.start),
                       Align(
                         alignment: Alignment.centerLeft,
                         child: Container(
                           padding: EdgeInsets.only(left: 25),
                           width: 15,
                           child: Switch(
                             
                              value: true, 
                              onChanged: (bool? value) {  },
                              
                           ),
                         ),
                       ),
                       

                ],
            ),
              ))),
            Padding(
              padding: const EdgeInsets.all(25),
              child: InkWell(
                onTap: (){
                   Navigator.pushNamed(context, '/homepage');
                },
                child: getBigButton(context: context,text: 'Ingresar',size: MediaQuery.of(context).size.width,padding: 14.0)
              ),)

        ],
      ),
    );
  }
}
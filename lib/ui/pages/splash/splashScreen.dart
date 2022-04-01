
import 'package:flutter/material.dart';
import 'package:notas/ui/widgets/theme.dart';

class SplashScree extends StatefulWidget {
  SplashScree({Key? key}) : super(key: key);

  @override
  State<SplashScree> createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScree> {

  @override
  void initState() {
    // TODO: implement initState
    _loadLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ColorGradient,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: GestorColor.staticColor,
              radius: 50,
              child: 
              Padding(
               padding: const EdgeInsets.all(25.0),
               child: Image.asset('assets/gestor/logo_app.png'),
              ),
            ),
            const SizedBox(height: 10),
            Text('Emcali Perdidas',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6?.copyWith(
              fontWeight: FontWeight.bold),
              ) 
          ],
        ),
      )
    );
  }

  void _loadLogin() {
    
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, '/loginpage');
        });

  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notas/ui/pages/home/init/initialHomeScreen.dart';
import 'package:notas/ui/widgets/theme.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: [
                InitialScreen(),
                Text('current index2: $currentIndex'),
                Text('current index3: $currentIndex'),
                Text('current index4: $currentIndex'),
                Text('current index5: $currentIndex'),

              ],
            ),
          ),
              _NavigatorGestorBar(
                index: currentIndex,
                onIndexSelected:(index){
                  setState(() {
                    currentIndex = index;
                  });
                } ),
        ],
      ),
    );
  }
}

class _NavigatorGestorBar extends StatelessWidget {

  final int index;
  final ValueChanged<int> onIndexSelected;
  const _NavigatorGestorBar({Key? key, 
                    required this.index,
                    required this.onIndexSelected}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(25),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              child: IconButton(
                onPressed: () => onIndexSelected(0), 
                icon: Icon(
                  Icons.home,
                color: index == 0 ? GestorColor.fourthColor: GestorColor.fourthColorDark,)),
            ),
              Material(
                child: IconButton(
                onPressed: () => onIndexSelected(1), 
                icon: Icon(
                  Icons.store,
                color: index == 1 ? GestorColor.fourthColor: GestorColor.fourthColorDark,)),
              ),
              Material(
                 child: CircleAvatar(
                   backgroundColor: GestorColor.fourthColor,
                   child: IconButton( 
                                 onPressed: () => onIndexSelected(2), 
                                 icon: Icon(
                    Icons.shopping_basket,
                                 color: index == 2 ? GestorColor.fourthColor: GestorColor.fourthColorDark,)),
                 ),
                
              ),            
              Material(
                child: IconButton(
                onPressed: () => onIndexSelected(3), 
                icon: Icon(
                  Icons.favorite_border,
                color: index == 3 ? GestorColor.fourthColor: GestorColor.fourthColorDark,)),
              ),
              Material(
                child: InkWell(
                  onTap: () => onIndexSelected(4),
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red,
                    
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
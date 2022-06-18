import 'package:eduplay/screens/live.dart';
import 'package:eduplay/screens/search.dart';
import 'package:eduplay/screens/space.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    int _currentIndex = 0;

    List<Widget> screens = [
      LiveScreen(), // ao vivo
      SpaceScreen(), // meu espaço (progresso, conteudos e duvidas)
      SearchScreen(), // buscar conteudo
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "images/eduplay-logo-large.png",
            width: 110,
            height: 35,
          ),
        ),
        body: screens[_currentIndex],
        floatingActionButton: FloatingActionButton(
          child: Image.asset("images/libras-icon.png"),
          onPressed: () => print("pressed"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  title: Text("Início"),
                  icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                title: Text("Meu Espaço"),
                icon: Icon(Icons.person),
              ),
              BottomNavigationBarItem(
                  title: Text("Buscar"),
                  icon: Icon(Icons.search)
              ),
            ]
        ),
      );
    }

}

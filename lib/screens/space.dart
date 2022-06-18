import 'package:flutter/material.dart';

class SpaceScreen extends StatefulWidget {
  const SpaceScreen({Key? key}) : super(key: key);

  @override
  _SpaceScreenState createState() => _SpaceScreenState();
}

class _SpaceScreenState extends State<SpaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // --- Botão Meu Progresso ---
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.bar_chart,
                  color: Colors.white,
                ),
                label: Text(
                  "Ver Progresso",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 15, bottom: 15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/progress");
                },
              ),
            ),

            // --- Botão Minhas Dúvidas ---
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.question_answer,
                  color: Colors.white,
                ),
                label: Text(
                  "Fazer Pergunta",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 15, bottom: 15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/askquestion");
                },
              ),
            ),

            // --- Botão Minhas Solicitações ---
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.white,
                ),
                label: Text(
                  "Solicitar Conteúdo",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 15, bottom: 15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "/askcontent");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class AskContentScreen extends StatefulWidget {
  const AskContentScreen({Key? key}) : super(key: key);

  @override
  _AskContentScreenState createState() => _AskContentScreenState();
}

class _AskContentScreenState extends State<AskContentScreen> {

  TextEditingController _ensinoController = TextEditingController();
  TextEditingController _disciplinaController = TextEditingController();
  TextEditingController _anoController = TextEditingController();
  TextEditingController _formatoController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solicitar conteúdo"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  // --- Campo Ensino ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Ensino",
                        prefixIcon: Icon(Icons.school),
                      ),
                      onChanged: (String? newValue) {
                        _ensinoController.text = newValue!;
                      },
                      validator: (value){
                        if (value!.isEmpty) {
                          return "Este campo é obrigatório";
                        }
                      },
                      items: <String>['Fundamental I', 'Fundamental II', 'Médio', 'Superior']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),

                  // --- Campo Disciplina ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Disciplina",
                        prefixIcon: Icon(Icons.school),
                      ),
                      onChanged: (String? newValue) {
                        _disciplinaController.text = newValue!;
                      },
                      validator: (value){
                        if (value!.isEmpty) {
                          return "Este campo é obrigatório";
                        }
                      },
                      items: <String>['Português', 'Matemática', 'Inglês', 'História', 'Geografia', 'Biologia', 'Física', 'Química', 'Sociologia', 'Filosofia']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),

                  // --- Campo Ano ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Ano",
                        prefixIcon: Icon(Icons.school),
                      ),
                      onChanged: (String? newValue) {
                        _anoController.text = newValue!;
                      },
                      validator: (value){
                        if (value!.isEmpty) {
                          return "Este campo é obrigatório";
                        }
                      },
                      items: <String>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10',]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),

                  // --- Campo Formato ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Formato",
                        prefixIcon: Icon(Icons.school),
                      ),
                      onChanged: (String? newValue) {
                        _formatoController.text = newValue!;
                      },
                      validator: (value){
                        if (value!.isEmpty) {
                          return "Este campo é obrigatório";
                        }
                      },
                      items: <String>['Áudio', 'Texto', 'Vídeo', 'Vídeo com Transcição', 'Vídeo com tradução em ibras']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),

                  // --- Botão Enviar ---
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Text(
                        "Enviar Solicitação",
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
                      onPressed: () {
                        print("Pressed");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

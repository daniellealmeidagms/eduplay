import 'package:flutter/material.dart';

class AskQuestionScreen extends StatefulWidget {
  const AskQuestionScreen({Key? key}) : super(key: key);

  @override
  _AskQuestionScreenState createState() => _AskQuestionScreenState();
}

class _AskQuestionScreenState extends State<AskQuestionScreen> {

  TextEditingController _conteudoController = TextEditingController();
  TextEditingController _perguntaController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fazer pergunta"),
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

                  // --- Campo Conteúdo ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Conteúdo",
                        prefixIcon: Icon(Icons.school),
                      ),
                      onChanged: (String? newValue) {
                        _conteudoController.text = newValue!;
                      },
                      validator: (value){
                        if (value!.isEmpty) {
                          return "Este campo é obrigatório";
                        }
                      },
                      items: <String>['Conteúdo A', 'Conteúdo B', 'Conteúdo C', 'Conteúdo D']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),

                  // --- Campo Valor do Hectare ---
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                    child: TextFormField(
                      controller: _perguntaController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Qual é a sua pergunta?",
                      ),
                    ),
                  ),

                  // --- Botão Enviar ---
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Text(
                        "Enviar Pergunta",
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

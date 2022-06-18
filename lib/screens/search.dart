import 'package:eduplay/models/conteudo.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TextEditingController _ensinoController = TextEditingController();
  TextEditingController _disciplinaController = TextEditingController();
  TextEditingController _anoController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  List<Conteudo> _listaConteudos = [];

  @override
  Widget build(BuildContext context) {
    return Container(
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

                  // --- Campo Disciplina ---
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

                  // --- Botão Buscar ---
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Text(
                        "Buscar",
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
                        setState(() {
                          _listaConteudos = [
                            Conteudo("Conteudo A", "Áudio: SIM, Texto: SIM, Vídeo: SIM, Vídeo com Transcrição: NÃO, Vídeo com Libras: NÃO"),
                          ];
                        });
                      },
                    ),
                  ),

                  // Listagem de Conteudos
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: _listaConteudos.length,
                    itemBuilder: (_, index) {
                      Conteudo conteudo = _listaConteudos[index];
                      return ListTile(
                        contentPadding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                        title: Text(conteudo.titulo),
                        subtitle: Text(conteudo.descricao),
                      );
                    },
                    separatorBuilder: (_, index) => const Divider(height: 2, thickness: 2,),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

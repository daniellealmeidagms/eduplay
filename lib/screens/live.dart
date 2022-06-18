import 'package:video_player/video_player.dart';
import 'package:eduplay/models/instituicao.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {

  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset("videos/exemplo.mp4")
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {
          _videoPlayerController.play();
        });
      });
  }

  List<Instituicao> _listaInstituicoes = [
    Instituicao("IFG - Instituto Federal de Goias", "Campus Goiânia-GO"),
    Instituicao("IFGoiano - Instituto Federal Goiano", "Campus Trindade-GO"),
    Instituicao("UFG - Universidade Federal de Goiás", "Campus Samambaia, Goiânia-GO"),
    Instituicao("UFCat - Universidade Federal de Catalão", "Catalão-GO"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                child: Text(
                  "Ao Vivo",
                  style: TextStyle(
                    color: Colors.lightBlue[800],
                    fontSize: 20,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                child: _videoPlayerController.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(_videoPlayerController),
                )
                    : Text("Pressione Play"),
              ),
              OutlinedButton(
                  onPressed: (){
                    setState(() {
                      _videoPlayerController.value.isPlaying ? _videoPlayerController.pause() : _videoPlayerController.play() ;
                    });
                  },
                  child: Icon(
                      _videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_arrow
                  )
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(3, 10, 3, 10),
                child: Text(
                  "Instituicoes",
                  style: TextStyle(
                    color: Colors.lightBlue[800],
                    fontSize: 20,
                  ),
                ),
              ),


              // Listagem de Instituicoes
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: _listaInstituicoes.length,
                  itemBuilder: (_, index) {
                    Instituicao instituicao = _listaInstituicoes[index];
                    return ListTile(
                      contentPadding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                      title: Text(instituicao.nome),
                      subtitle: Text(instituicao.local),
                    );
                  },
                  separatorBuilder: (_, index) => const Divider(height: 2, thickness: 2,),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

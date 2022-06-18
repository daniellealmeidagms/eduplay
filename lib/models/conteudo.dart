class Conteudo {
  late String _titulo;
  late String _descricao;

  Conteudo(this._titulo, this._descricao);

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }
}
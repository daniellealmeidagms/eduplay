class Instituicao {
  late String _nome;
  late String _local;

  Instituicao(this._nome, this._local);

  String get local => _local;

  set local(String value) {
    _local = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }
}
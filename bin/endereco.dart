class Endereco {
  int? cep;
  String? rua;
  int? numero;
  String? complemento;
  String? bairro;
  String? estado;
  Endereco(
      {required this.bairro,
      this.cep,
      this.complemento,
      this.estado,
      this.numero,
      this.rua});
  @override
  String toString() {
    // cep = '$cep';
    // rua = '$rua';
    // numero = '$numero';
    // complemento = '$complemento';
    // bairro = '$bairro';
    // estado = '$estado';
    return '$bairro $rua $cep $complemento $estado $numero';
  }
}

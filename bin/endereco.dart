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

  String toString() {
    cep = '$cep' as int?;
    rua = '$rua';
    numero = '$numero' as int?;
    complemento = '$complemento';
    bairro = '$bairro';
    estado = '$estado';
    return '$bairro $rua $cep $complemento $estado $numero';
  }
}

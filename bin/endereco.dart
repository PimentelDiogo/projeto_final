class Endereco {
  String cep;
  String rua;
  int numero;
  String complemento;
  String bairro;
  String estado;
  Endereco(
      {required this.bairro,
      required this.cep,
      required this.complemento,
      required this.estado,
      required this.numero,
      required this.rua});
  @override
  String toString() {
    return '$rua, $numero, $complemento $bairro/$estado , $cep';
  }
}

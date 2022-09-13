import 'endereco.dart';

class PessoaJ {
  String? nomeFantasia;
  String? razaoSocial;
  int? cnpj;
  Endereco? endereco;

  PessoaJ(
      {required this.cnpj, this.nomeFantasia, this.razaoSocial, this.endereco});
}

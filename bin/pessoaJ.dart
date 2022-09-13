import 'endereco.dart';

class PessoaJ {
  String? nomeFantasia;
  String? razaoSocial;
  int? cnpj;
  Endereco? endereco;

  PessoaJ(
      {required this.cnpj, this.nomeFantasia, this.razaoSocial, this.endereco});
}

class Empresa extends PessoaJ {
  PessoaJ? socio;
  Endereco? endereco;

  Empresa({required this.socio, this.endereco})
      : super(cnpj: 0, razaoSocial: '', nomeFantasia: '');

  meuEmpresa(Empresa e) {
    print('${e.socio}${e.endereco}${e.cnpj}${e.nomeFantasia}${e.razaoSocial}');
  }
}

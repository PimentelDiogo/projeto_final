import 'endereco.dart';

class PessoaJ {
  String? nomeFantasia;
  String? razaoSocial;
  int? cnpj;
  PessoaJ({required this.cnpj, this.nomeFantasia, this.razaoSocial});
}

abstract class Empresa extends PessoaJ implements Endereco {
  String? socio;
  Empresa({required this.socio})
      : super(
          cnpj: 0,
          razaoSocial: '',
          nomeFantasia: '',
        );

  meuEmpresa(Empresa e) {
    print('${e.socio}${e.cnpj}${e.nomeFantasia}${e.razaoSocial}');
  }
}

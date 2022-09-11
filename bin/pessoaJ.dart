class PessoaJ {
  String? nomeFantasia;
  String? razaoSocial;
  int? cnpj;
  PessoaJ({required this.cnpj, this.nomeFantasia, this.razaoSocial});
}

class Empresa extends PessoaJ {
  String? socio;
  Empresa({required this.socio})
      : super(
          cnpj: 0,
        );

  meuEmpresa(Empresa e) {
    print('${e.socio}${e.cnpj}${e.nomeFantasia}${e.razaoSocial}');
  }
}

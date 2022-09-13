import 'endereco.dart';

class PessoaF {
  String? nome;
  int? cpf;
  Endereco? endereco;
  PessoaF? socio;
  PessoaF({required this.cpf, this.nome, this.socio, this.endereco});

  meuPessoaF(PessoaF pf) {
    print('${pf.cpf}${pf.nome}');
  }
}

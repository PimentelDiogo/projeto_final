import 'endereco.dart';

class PessoaF {
  String? nome;
  int? cpf;
  PessoaF({required this.cpf, this.nome});

  meuPessoaF(PessoaF pf) {
    print('${pf.cpf}${pf.nome}');
  }
}

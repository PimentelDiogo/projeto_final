import 'endereco.dart';

class PessoaF {
  String? nome;
  int? cpf;
  Endereco? endereco;
  PessoaF? socio;
  PessoaF({required this.cpf, this.nome, this.socio, this.endereco});
  @override
  String toString() {
    nome = '$nome';
    cpf = '$cpf' as int?;
    endereco = '$endereco' as Endereco;
    socio = "$socio" as PessoaF?;
    return '$nome $cpf $endereco $socio';
  }
}

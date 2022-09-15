import 'endereco.dart';
import 'socio.dart';

class PessoaF extends Socio {
  String nome;
  String cpf;

  PessoaF({required this.cpf, required this.nome, required Endereco endereco})
      : super(endereco: endereco);
  @override
  String toString() {
    return 'Nome: $nome\nCPF: $cpf\nEndereço: $endereco';
  }
}

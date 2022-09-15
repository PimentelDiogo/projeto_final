import 'endereco.dart';
import 'socio.dart';

class PessoaF extends Socio {
  String nome;
  String cpf;

  PessoaF({required this.cpf, required this.nome, required Endereco endereco})
      : super(endereco: endereco);
  @override
  String toString() {
    return '\nNome: $nome\nCPF: ${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9, 11)}\nEndereço: $endereco';
  }
}

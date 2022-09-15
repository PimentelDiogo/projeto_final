import 'endereco.dart';
import 'socio.dart';

class PessoaJ extends Socio {
  String nomeFantasia;
  String razaoSocial;
  String cnpj;

  PessoaJ(
      {required this.cnpj,
      required this.nomeFantasia,
      required this.razaoSocial,
      required Endereco endereco})
      : super(endereco: endereco);
  @override
  String toString() {
    return '\nCNPJ: ${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12, 14)}\nRazãoSocial:  $razaoSocial\nNome Fantasia:  $nomeFantasia\nEndereço:  $endereco ';
  }
}

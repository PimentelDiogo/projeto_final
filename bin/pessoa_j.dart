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
    return '$nomeFantasia $cnpj $endereco $razaoSocial';
  }
}

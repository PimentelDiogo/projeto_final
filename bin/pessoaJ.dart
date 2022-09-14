import 'endereco.dart';
import 'package:uuid/uuid.dart';

class PessoaJ {
  String? nomeFantasia;
  String? razaoSocial;
  int? cnpj;
  String? telefone;
  Endereco? endereco;

  PessoaJ(
      {required this.cnpj,
      this.nomeFantasia,
      this.razaoSocial,
      this.endereco,
      this.telefone});
  @override
  String toString() {
    nomeFantasia = '$nomeFantasia';
    razaoSocial = '$razaoSocial';
    cnpj = '$cnpj' as int?;
    telefone = '$telefone';
    endereco = '$endereco' as Endereco;
    return '$nomeFantasia $cnpj $endereco $razaoSocial $telefone';
  }
}

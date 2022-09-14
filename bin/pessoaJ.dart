import 'endereco.dart';
import 'package:uuid/uuid.dart';

class PessoaJ {
  String? nomeFantasia;
  String? razaoSocial;
  int? cnpj;
  String? telefone;
  Endereco? endereco;
  var id = Uuid().v4();

  PessoaJ(
      {required this.cnpj,
      required this.id,
      this.nomeFantasia,
      this.razaoSocial,
      this.endereco,
      this.telefone});
}

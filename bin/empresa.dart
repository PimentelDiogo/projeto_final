import 'endereco.dart';
import 'package:uuid/uuid.dart';

import 'socio.dart';

class Empresa {
  Endereco? endereco;
  int? cnpj;
  String? razaoSocial;
  String? nomeFantasia;
  int? telefone;
  var id = Uuid().v4();
  Empresa(
      {required this.cnpj,
      this.endereco,
      this.nomeFantasia,
      this.razaoSocial,
      this.telefone,
      Socio? socio});
  @override
  String toString() {
    String id1 = '$id';

    return '$id1';
  }
}

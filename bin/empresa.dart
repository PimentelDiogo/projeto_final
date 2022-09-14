import 'endereco.dart';
import 'package:uuid/uuid.dart';

import 'socio.dart';

class Empresa {
  Socio? socio;
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
      this.socio});
  @override
  String toString() {
    String id1 = '$id';
    String socio1 = '$socio';
    String end1 = '$endereco';

    return 'ID: $id1\nCNPJ: $cnpj\nRazão Social: $razaoSocial\nNome Fantasia: $nomeFantasia\nTelefone: $telefone\nEndereço: $end1\nSocio: $socio1';
  }
}

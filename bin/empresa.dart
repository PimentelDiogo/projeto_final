import 'endereco.dart';
import 'package:uuid/uuid.dart';

import 'socio.dart';

class Empresa {
  Endereco? endereco;
  String? cnpj;
  String? razaoSocial;
  String? nomeFantasia;
  String? telefone;
  var id = Uuid().v4();
  Empresa(
      {required this.id,
      this.cnpj,
      this.endereco,
      this.nomeFantasia,
      this.razaoSocial,
      this.telefone,
      Socio? socio});
}

import 'endereco.dart';
// ignore: depend_on_referenced_packages
import 'package:uuid/uuid.dart';
import 'socio.dart';

// refatorar , por como required
class Empresa {
  Socio socio;
  Endereco endereco;
  String cnpj;
  String razaoSocial;
  String nomeFantasia;
  String telefone;
  final String id = Uuid()
      .v4(); // deixar como final, para não ter possibilidade de alteração.
  final data = DateTime.now(); // ele gera automatico por ser função.
  Empresa(
      {required this.cnpj,
      required this.endereco,
      required this.nomeFantasia,
      required this.razaoSocial,
      required this.telefone,
      required this.socio});
  @override
  String toString() {
    return 'ID: $id\nCNPJ: $cnpj\nRazão Social: $razaoSocial\nNome Fantasia: $nomeFantasia\nTelefone: $telefone\nEndereço: $endereco\nSocio: $socio';
  }
}

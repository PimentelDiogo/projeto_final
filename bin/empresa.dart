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
    return 'ID: $id\nCNPJ: ${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12, 14)}\nRazão Social: $razaoSocial\nNome Fantasia: $nomeFantasia\nTelefone com DDD: (${telefone.substring(0, 2)}) ${telefone.substring(2, 3)} ${telefone.substring(3, 7)}-${telefone.substring(7, 11)}\nEndereço: $endereco\nSocio: $socio';
  }
}

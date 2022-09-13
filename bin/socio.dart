import 'endereco.dart';
import 'pessoaF.dart';

class Socio extends PessoaF {
  String? cnpj;
  Endereco? endereco;

  Socio({this.cnpj, this.endereco}) : super(cpf: 0, nome: '');
}

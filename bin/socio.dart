import 'endereco.dart';
import 'pessoaF.dart';

class Socio extends PessoaF {
  String? cnpj;
  String? nomeFantasia;
  String? razaoSocial;
  Endereco? endereco;

  Socio({this.cnpj, this.endereco, this.razaoSocial, this.nomeFantasia})
      : super(cpf: 0, nome: '');
}

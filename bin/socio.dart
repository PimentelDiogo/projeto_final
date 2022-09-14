import 'endereco.dart';
import 'pessoaF.dart';

class Socio extends PessoaF {
  String? cnpj;
  String? nomeFantasia;
  String? razaoSocial;
  Endereco? endereco;

  Socio({this.cnpj, this.endereco, this.razaoSocial, this.nomeFantasia})
      : super(cpf: 0, nome: '');
  @override
  String toString() {
    cnpj = '$cnpj';
    nomeFantasia = '$nomeFantasia';
    razaoSocial = '$razaoSocial';
    endereco = '$endereco' as Endereco?;
    cpf = '$cpf' as int?;
    nome = '$nome';
    return '$cnpj $endereco $nomeFantasia $razaoSocial $cpf $nome';
  }
}

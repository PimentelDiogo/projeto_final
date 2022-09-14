// importar as bibliotecas
import 'dart:io';
import 'package:projeto_final/projeto_final.dart' as projeto_final;
import 'empresa.dart';
import 'endereco.dart';
import 'pessoaF.dart';
import 'pessoaJ.dart';
import 'socio.dart';

List<Map<String, dynamic>> cadastros = [];
void main(List<String> arguments) {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print(
        'Seja bem vindo ao sistema de cadastro\nPara cadastrar digite *1*\nRemover uma empresa *2*\nVer lista de empresas digite *3*\nPara finalizar digite *sair*');
    String? txt = stdin.readLineSync();
    if (txt == 'sair') {
      print('=Fim=');
      condicao = false;
    } else if (txt == '1') {
      print("\x1B[2J\x1B[0;0H");
      cadastrarEmpresa();
    } else if (txt == '3') {
      imprimir();
      print('\n$cadastros\n');
    } else if (txt == '2') {
      print("\x1B[2J\x1B[0;0H");
      remover();
    } else {
      print('Comando não existe\n');
    }
  }
}

// ligar os input para objetos
cadastrarEmpresa() {
  Map<String, dynamic> cadastro = {};
  cadEmpresa();
  cadPessoaJ();
  data();
  print('$cadastro\n');
  cadastros.add(cadastro);
}

PessoaJ cadEmpresa() {
  print('Novo cadastro empresa');
  print('Digite seu CNPJ:');
  int? cnpj = int.parse(stdin.readLineSync()!);

  print('Digite sua Razão Social:');
  String? razaoSocial = stdin.readLineSync();

  print('Digite seu Nome fantasia:');
  String? nomeFantasia = stdin.readLineSync();

  print('Digite Telefone:');
  int? telefone = int.parse(stdin.readLineSync()!);

  Endereco end1 = cadastroEnd();
  PessoaJ pj =
      PessoaJ(id: '', cnpj: 0, razaoSocial: '', nomeFantasia: '', telefone: '');
  return pj;
}

PessoaF cadPessoaF() {
  print('Digite seu CPF:');
  int? cpf = int.parse(stdin.readLineSync()!);

  print('Digite seu Nome Completo:');
  String? nome = stdin.readLineSync();

  Endereco end1 = cadastroEnd();
  PessoaF pf = PessoaF(cpf: 0, nome: '');
  return pf;
}

Socio? cadPessoaJ() {
  print('Dados do Socio:\npara CNPJ digite _1_\npara CPF digite _2_:');
  String? txt = stdin.readLineSync();
  if (txt == '1') {
    print('Cadastro\nDigite seu CNPJ:');
    int? cnpjSocio = int.parse(stdin.readLineSync()!);

    print('Digite sua Razão Social:');
    String? razaoSocialSocio = stdin.readLineSync();

    print('Digite seu Nome fantasia:');
    String? nomeFsocio = stdin.readLineSync();

    Endereco end1 = cadastroEnd();
    Socio socio1 = Socio(cnpj: '', razaoSocial: '', nomeFantasia: '');
    return socio1;
  } else if (txt == '2') {
    cadPessoaF();
  }
}

Endereco cadastroEnd() {
  print('Digite seu endereço:\nRua: ');
  String? rua1 = stdin.readLineSync();
  print('Número: ');
  int numero1 = int.parse(stdin.readLineSync()!);
  print('Complemento: ');
  String? complemento1 = stdin.readLineSync();
  print('Bairro: ');
  String? bairro1 = stdin.readLineSync();
  print('Estado: ');
  String? estado1 = stdin.readLineSync();
  print('Cep: ');
  int cep1 = int.parse(stdin.readLineSync()!);
  Endereco end1 = Endereco(
      rua: '', numero: 0, complemento: '', bairro: '', estado: '', cep: 0);
  return end1;
}

imprimir() {
  for (var i = 0; i < cadastros.length; i++) {
    print('ID $i - ${cadastros[i]}');
  }
}

remover() {
  print('Qual empresa deseja remover? ');
  imprimir();
  int input = int.parse(stdin.readLineSync()!);
  int item = int.parse('$input');
  cadastros.removeAt(item);
}

buscaCpf() {
  RegExp validaCpf = RegExp("[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}");
  stdout
      .write(validaCpf.hasMatch('Insira seu CPF para encontrar sua empresa: '));
}

buscaCnpj() {
  RegExp validaCnpj = RegExp("[0-9]{2}.[0-9]{3}.[0-9]{3}/[0-9]{4}-[0-9]{2}");
  stdout.write(
      validaCnpj.hasMatch('Insira seu CNPJ para encontrar sua empresa: '));
}

data() {
  final data = DateTime.now();
}

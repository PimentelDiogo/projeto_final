// importar as bibliotecas
import 'dart:core';
import 'dart:io';
import 'package:projeto_final/projeto_final.dart' as projeto_final;
import 'package:uuid/uuid.dart';
import 'empresa.dart';
import 'endereco.dart';
import 'pessoaF.dart';
import 'pessoaJ.dart';
import 'socio.dart';

void main() {
  List<Empresa> lista = [];
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
      lista = cadastrar(lista);
    } else if (txt == '3') {
      print('\n$lista\n');
      lista.forEach(print);
    } else if (txt == '2') {
      print("\x1B[2J\x1B[0;0H");
      remover(lista);
    } else {
      print('Comando não existe\n');
    }
  }
}

List<Empresa> cadastrar(List<Empresa> cadList) {
  List<Empresa> aux = cadList;

  print('Novo cadastro empresa');
  print('Digite seu CNPJ:');
  String? cnpj = stdin.readLineSync();

  print('Digite sua Razão Social:');
  String? razao = stdin.readLineSync();

  print('Digite seu Nome fantasia:');
  String? nomeF = stdin.readLineSync();

  print('Digite Telefone:');
  String? tele = stdin.readLineSync();
  Endereco end1 = cadastroEnd(cadList);
  Socio? socio1 = cadPessoaJ(cadList);
  data();
  Empresa pj = Empresa(
      cnpj: cnpj,
      razaoSocial: razao,
      nomeFantasia: nomeF,
      telefone: tele,
      endereco: end1,
      socio: socio1);
  aux.add(pj);
  return aux;
}

PessoaF cadPessoaF(List<Empresa> cadList) {
  print('Digite seu CPF:');
  int? cpf = int.parse(stdin.readLineSync()!);

  print('Digite seu Nome Completo:');
  String? nome = stdin.readLineSync();

  Endereco end1 = cadastroEnd(cadList);
  PessoaF pf = PessoaF(cpf: cpf, nome: nome);
  return pf;
}

Socio? cadPessoaJ(List<Empresa> cadList) {
  print('Dados do Socio:\npara CNPJ digite _1_\npara CPF digite _2_:');
  String? txt = stdin.readLineSync();
  if (txt == '1') {
    print('Cadastro\nDigite seu CNPJ:');
    String? cnpjSocio = stdin.readLineSync()!;

    print('Digite sua Razão Social:');
    String? razaoSocialSocio = stdin.readLineSync();

    print('Digite seu Nome fantasia:');
    String? nomeFsocio = stdin.readLineSync();

    Endereco end1 = cadastroEnd(cadList);
    Socio socio1 = Socio(
        cnpj: cnpjSocio,
        razaoSocial: razaoSocialSocio,
        nomeFantasia: nomeFsocio);
    return socio1;
  } else if (txt == '2') {
    cadPessoaF(cadList);
  }
}

Endereco cadastroEnd(List<Empresa> cadList) {
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
      rua: rua1,
      numero: numero1,
      complemento: complemento1,
      bairro: bairro1,
      estado: estado1,
      cep: cep1);
  return end1;
}

void imprimir(List<Empresa> cadList) {
  print("Entre com o ID da empresa: ");
  String input = stdin.readLineSync()!;

  for (int i = 0; i < cadList.length; i++) {
    if (input == cadList[i].id) {
      print("${cadList[i]}");
      i = cadList.length;
    }
  }
}

void remover(List<Empresa> cadList) {
  print('Qual empresa deseja remover pelo ID? ');
  imprimir(cadList);
  int input = int.parse(stdin.readLineSync()!);
  int item = int.parse('$input');
  cadList.removeAt(item);
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

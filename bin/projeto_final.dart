// importar as bibliotecas
import 'dart:core';
import 'dart:io';
import 'empresa.dart';
import 'endereco.dart';
import 'pessoa_f.dart';
import 'pessoa_j.dart';
import 'socio.dart';

List<Empresa> lista = [];
void main() {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print(
        '_Seja bem vindo ao sistema de cadastro_\nPara cadastrar digite _1_\nRemover uma empresa _2_\nVer lista de empresas digite _3_\nPara finalizar digite _sair_');
    String? txt = stdin.readLineSync();
    if (txt == 'sair') {
      print('_Fim_');
      condicao = false;
    } else if (txt == '1') {
      print("\x1B[2J\x1B[0;0H");
      lista = cadastrar(lista);
    } else if (txt == '3') {
      print('\n$lista\n');
      lista.forEach(print);
    } else if (txt == '2') {
      print("\x1B[2J\x1B[0;0H");
      remover();
    } else {
      print('Comando não existe\n');
    }
  }
}

List<Empresa> cadastrar(List<Empresa> cadList) {
  List<Empresa> aux = cadList;

  print('Novo cadastro empresa');
  print('Digite seu CNPJ:');
  String cnpj = stdin.readLineSync()!;

  print('Digite sua Razão Social:');
  String razao = stdin.readLineSync()!;

  print('Digite seu Nome fantasia:');
  String nomeF = stdin.readLineSync()!;

  print('Digite Telefone:');
  String tele = stdin.readLineSync()!;
  Endereco end1 = cadastroEnd();
  Socio socio1 = cadSocio();

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

Socio cadSocio() {
  int opcao;
  Socio a;
  do {
    print('\nCadastro sócio\n_1_ Pessoa Física\n_2_ Pessoa Juridica');
    print('Opcao: ');
    opcao = int.parse(stdin.readLineSync()!);
  } while ((opcao != 1) && (opcao != 2));

  if (opcao == 1) {
    a = cadPessoaF();
  } else {
    a = cadPessoaJ();
  }
  return a;
}

PessoaF cadPessoaF() {
  print('Digite seu CPF:');
  String cpf = stdin.readLineSync()!;

  print('Digite seu Nome Completo:');
  String nome = stdin.readLineSync()!;

  Endereco end1 = cadastroEnd();
  PessoaF pf = PessoaF(cpf: cpf, nome: nome, endereco: end1);
  return pf;
}

PessoaJ cadPessoaJ() {
  print('Cadastro\nDigite seu CNPJ:');
  String cnpjSocio = stdin.readLineSync()!;

  print('Digite sua Razão Social:');
  String razaoSocialSocio = stdin.readLineSync()!;

  print('Digite seu Nome fantasia:');
  String nomeFsocio = stdin.readLineSync()!;
  Endereco end1 = cadastroEnd();
  PessoaJ pj = PessoaJ(
      cnpj: cnpjSocio,
      nomeFantasia: nomeFsocio,
      razaoSocial: razaoSocialSocio,
      endereco: end1);
  return pj;
}

Endereco cadastroEnd() {
  print('Digite seu endereço:\nRua: ');
  String rua1 = stdin.readLineSync()!;
  print('Número: ');
  int numero1 = int.parse(stdin.readLineSync()!);
  print('Complemento: ');
  String complemento1 = stdin.readLineSync()!;
  print('Bairro: ');
  String bairro1 = stdin.readLineSync()!;
  print('Estado: ');
  String estado1 = stdin.readLineSync()!;
  print('Cep: ');
  String cep1 = stdin.readLineSync()!;
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

void remover() {
  print('Qual empresa deseja remover pelo ID? ');
  imprimir(lista);
  int input = int.parse(stdin.readLineSync()!);
  int item = int.parse('$input');
  lista.removeAt(item);
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

import 'dart:io';
import 'package:projeto_final/projeto_final.dart' as projeto_final;
import 'endereco.dart';

// importar as bibliotecas
List<Map<String, dynamic>> cadastros = [];
void main(List<String> arguments) {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print(
        'Seja bem vindo ao sistema de cadastro\nPara cadastrar digite *1*\nRemover um item *2*\nVer lista de usuarios digite *3*\nPara finalizar digite *sair*');
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
  print('Cadastro\nDigite seu CNPJ:');
  int? cnpj = int.parse(stdin.readLineSync()!);
  cadastro['cnpj'] = cnpj;

  print('Digite sua Razão Social:');
  String? razaoSocial = stdin.readLineSync();
  cadastro['razao'] = razaoSocial;

  print('Digite seu Nome fantasia:');
  String? nomeF = stdin.readLineSync();
  cadastro['nomeFantasia'] = nomeF;

  print('Digite seu telefone:');
  int? telefone = int.parse(stdin.readLineSync()!);
  cadastro['telefone'] = telefone;

  print('Digite seu endereço:');
  String? endereco = stdin.readLineSync();
  cadastro['endereco'] = endereco;

  print('Dados do Socio:\nCPF');
  int? cpf = int.parse(stdin.readLineSync()!);
  cadastro['cpf'] = cpf;

  print('Digite seu Nome Completo:');
  String? nome = stdin.readLineSync();
  cadastro['nome'] = nome;

  print('Digite seu endereço:');
  String? enderecoPessoa = stdin.readLineSync();
  cadastro['enderecoPessoa'] = enderecoPessoa;

  print('$cadastro\n');
  cadastros.add(cadastro);
}

imprimir() {
  for (var i = 0; i < cadastros.length; i++) {
    print('ID $i - ${cadastros[i]}');
  }
}

remover() {
  print('Qual item deseja remover? ');
  imprimir();
  int input = int.parse(stdin.readLineSync()!);
  int item = int.parse('$input');
  cadastros.removeAt(item);
}

// importar as bibliotecas
import 'dart:io';
import 'package:projeto_final/projeto_final.dart' as projeto_final;
import 'endereco.dart';
import 'pessoaJ.dart';

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

  Endereco cadastroEnd() {
    print('Digite seu endereço:\nRua: ');
    String? rua = stdin.readLineSync();
    print('Número: ');
    int numero = int.parse(stdin.readLineSync()!);
    print('Complemento: ');
    String? complemento = stdin.readLineSync();
    print('Bairro: ');
    String? bairro = stdin.readLineSync();
    print('Estado: ');
    String? estado = stdin.readLineSync();
    print('Cep: ');
    int cep = int.parse(stdin.readLineSync()!);
    Endereco end1 = Endereco(
        rua: '', numero: 0, complemento: '', bairro: '', estado: '', cep: 0);
    return end1;
  }

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

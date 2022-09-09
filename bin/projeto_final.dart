import 'dart:io';
import 'package:projeto_final/projeto_final.dart' as projeto_final;

List<Map<String, dynamic>> cadastros = [];
void main(List<String> arguments) {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print(
        'Agenda de contato\nPara cadastrar digite *cadastro*\nRemover um item *remover*\nVer lista de usuarios digite *lista*\nPara finalizar digite *sair*');
    String? txt = stdin.readLineSync();
    if (txt == 'sair') {
      print('=Fim=');
      condicao = false;
    } else if (txt == 'cadastro') {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (txt == 'lista') {
      imprimir();
      print('\n$cadastros\n');
    } else if (txt == 'remover') {
      print("\x1B[2J\x1B[0;0H");
      remover();
    } else {
      print('Comando não existe\n');
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};
  print('===Cadastro===\nDigite seu nome:');
  cadastro['nome'] = stdin.readLineSync();

  print('Digite seu telefone:');
  String? telefone = stdin.readLineSync();
  cadastro['telefone'] = telefone;

// print('Digite sua id:');
// String? id = stdin.readLineSync();
// cadastro['id'] = id;
// print('$cadastro\n');
// cadastros.add(cadastro);
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

/*ID: ca3e6c78-dae6-4629-b819-e5576c00f68b
CNPJ: 11.941.838/0001-04 Data Cadastro: 2022-08-31 22:37:17.921952
Razão Social: Elisa e Flávia Pães e Doces ME
Nome Fantasia: Pães e Doces
Telefone: (19) 9 8838-0630
Endereço: Rua Três, 338, Vila Industrial, Piracicaba/SP, 13.412-233
Sócio:
CPF: 763.679.800-08
Nome Completo: Mirella Kamilly Letícia Barbosa
Endereço: Rua Ulisses Bueno, 175, Vila Rosa, Aparecida de Goiânia/GO, 74.935-870

ID: fb7afcf0-2669-4e2b-8bd7-72d7456762b0
CNPJ: 92.456.516/0001-63  Data Cadastro: 2022-08-31 22:37:17.922076
Razão Social: Arthur e Andreia Telas Ltda
Nome Fantasia: Telas
Telefone: (11) 9 9572-6906
Endereço: Rua Domingos Vendemiati, 154, Parque Recanto do Parrilho, Jundiaí/SP, 13.219-051
Sócio:
CNPJ: 87.009.263/0001-40
Razão Social: Lavínia e Tereza Locações de Automóveis Ltda
Nome Fantasia: Loc. Auto
Endereço: Rua Ângelo Alberto Nesti, 639, Bussocaba, Osasco/SP, 06.053-060*/

import 'dart:io';

cadastro() {
  stdout.write('Seja bem vindo ao sistema de cadastro\nInsira seus dados: ');
}

buscaCpf() {
  stdout.write('Insira seu CPF para encontrar sua empresa: ');
}

buscaCnpj() {
  stdout.write('Insira seu CNPJ para encontrar sua empresa: ');
}

listarCadastro() {
  print('${cadastro().sort}');
}

/*cadastrar(){
  Map<String , dynamic> cadastro= {};
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
imprimir(){
  for(var i = 0; i < cadastros.length;i++){
    print('ID $i - ${cadastros[i]}');
  }
}
remover(){
  print('Qual item deseja remover? ');
  imprimir();
  int input = int.parse(stdin.readLineSync()!);
  int item = int.parse('$input');
  cadastros.removeAt(item);
}*/
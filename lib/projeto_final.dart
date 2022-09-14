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
import 'package:uuid/uuid.dart';
//import '../desafio/lib/quadrado.dart';

class Quadrado {
  final id = Uuid().v4();
  double altura;
  double base;

  Quadrado({required this.altura, required this.base});

  double calculaArea() => altura * base;

  @override
  String toString() {
    String aux1 = "ID: $id";
    String aux2 = "ALTURA: $altura";
    String aux = "BASE: $base";

    return "\n$aux1\n$aux2\n$aux";
  }
}

void main() {
  List<Quadrado> lista = [];
  int opcao = 0;

  do {
    print("\t====MENU====");
    print("1... Cadastrar novo quadrado");
    print("2... Calcular a area de uma quadrado por ID");
    print("3... Listar quadrados");
    print("4... Sair");
    stdout.write("Opcao: ");

    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        lista = cadastrar(lista);
        break;
      case 2:
        retornaAreaPeloId(lista);
        break;
      case 3:
        print("\n\t=== REGISTRO DE QUADRADOS ===");
        lista.forEach(print);
        break;
      case 4:
        break;
      default:
        print("\nopcao invalida");
    }
  } while (opcao != 4);
}

List<Quadrado> cadastrar(List<Quadrado> l) {
  List<Quadrado> aux = l;

  print("\t=== CADASTRO ====");
  stdout.write("Entre com a medida de altura do seu quadrado: ");
  double altura = double.parse(stdin.readLineSync()!);
  stdout.write("Entre com a medida da base do seu quadrado: ");
  double base = double.parse(stdin.readLineSync()!);

  Quadrado q = Quadrado(altura: altura, base: base);

  aux.add(q);

  return aux;
}

void retornaAreaPeloId(List<Quadrado> l) {
  stdout.write("Entre com o ID do quadrado que deseja obter a area: ");
  String idAux = stdin.readLineSync()!;

  for (int i = 0; i < l.length; i++) {
    if (idAux == l[i].id) {
      print("Area = ${l[i].calculaArea()}");
      i = l.length;
    }
  }
}

main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.
  //

  Set<String> novaListaDePessoas = Set<String>.from(pessoas);

  var quantidadeDePessoasSexoFeminino = 0;
  var quantidadeDePessoasSexoMasculino = 0;
  novaListaDePessoas.forEach((pessoa) {
    if (pessoa.contains('Masculino')) {
      quantidadeDePessoasSexoMasculino++;
    } else {
      quantidadeDePessoasSexoFeminino++;
    }
  });

  print(
      'Quantidade de pessoas do sexo Feminino: $quantidadeDePessoasSexoFeminino');

  print(
      'Quantidade de pessoas do sexo Masculino: $quantidadeDePessoasSexoMasculino');

  List<String> pessoasMaioresDeIdade = novaListaDePessoas
      .where((pessoa) => int.tryParse(pessoa.split('|')[1]) > 18)
      .toList();

  print(
      'O total de pessoas maiores de idade é: ${pessoasMaioresDeIdade.length}');

  pessoasMaioresDeIdade
      .sort((a, b) => b.split('|')[1].compareTo(a.split('|')[1]));

  List<String> pessoaMaisVelha = pessoasMaioresDeIdade[0].split('|');

  print(
      'A pessoa mais velha do grupo é ${pessoaMaisVelha[0]} com ${pessoaMaisVelha[1]} anos');
}

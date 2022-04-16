class Nome {

  late String nome;
  late int regiao;
  late int freq;
  late int rank;
  late String? sexo;
  
  Nome({
    required this.nome,
    required this.regiao,
    required this.freq,
    required this.rank,
    this.sexo,
  });

  Nome.fromJson(Map<String, dynamic> json) {
    nome = json['nome']??"";
    regiao = json['regiao']??0;
    freq = json['freq']??0;
    rank = json['rank']??0;
    sexo = json['sexo']??0;
  }
  
}

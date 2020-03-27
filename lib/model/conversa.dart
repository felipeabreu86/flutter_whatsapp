import 'dart:convert';

class Conversa {
  String nome;
  String mensagem;
  String caminhoFoto;

  Conversa(
    this.nome,
    this.mensagem,
    this.caminhoFoto,
  );

  Conversa copyWith({
    String nome,
    String mensagem,
    String caminhoFoto,
  }) {
    return Conversa(
      nome ?? this.nome,
      mensagem ?? this.mensagem,
      caminhoFoto ?? this.caminhoFoto,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'mensagem': mensagem,
      'caminhoFoto': caminhoFoto,
    };
  }

  static Conversa fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Conversa(
      map['nome'],
      map['mensagem'],
      map['caminhoFoto'],
    );
  }

  String toJson() => json.encode(toMap());

  static Conversa fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() =>
      'Conversa(nome: $nome, mensagem: $mensagem, caminhoFoto: $caminhoFoto)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Conversa &&
        o.nome == nome &&
        o.mensagem == mensagem &&
        o.caminhoFoto == caminhoFoto;
  }

  @override
  int get hashCode => nome.hashCode ^ mensagem.hashCode ^ caminhoFoto.hashCode;
}

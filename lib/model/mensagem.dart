import 'dart:convert';

class Mensagem {
  String idUsuario;
  String mensagem;
  String urlImagem;
  String tipo; //Define o tipo da mensagem, que pode ser "texto" ou "imagem"

  Mensagem({
    this.idUsuario,
    this.mensagem,
    this.urlImagem,
    this.tipo,
  });

  Mensagem copyWith({
    String idUsuario,
    String mensagem,
    String urlImagem,
    String tipo,
  }) {
    return Mensagem(
      idUsuario: idUsuario ?? this.idUsuario,
      mensagem: mensagem ?? this.mensagem,
      urlImagem: urlImagem ?? this.urlImagem,
      tipo: tipo ?? this.tipo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idUsuario': idUsuario,
      'mensagem': mensagem,
      'urlImagem': urlImagem,
      'tipo': tipo,
    };
  }

  static Mensagem fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Mensagem(
      idUsuario: map['idUsuario'],
      mensagem: map['mensagem'],
      urlImagem: map['urlImagem'],
      tipo: map['tipo'],
    );
  }

  String toJson() => json.encode(toMap());

  static Mensagem fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'Mensagem(idUsuario: $idUsuario, mensagem: $mensagem, urlImagem: $urlImagem, tipo: $tipo)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Mensagem &&
        o.idUsuario == idUsuario &&
        o.mensagem == mensagem &&
        o.urlImagem == urlImagem &&
        o.tipo == tipo;
  }

  @override
  int get hashCode {
    return idUsuario.hashCode ^
        mensagem.hashCode ^
        urlImagem.hashCode ^
        tipo.hashCode;
  }
}

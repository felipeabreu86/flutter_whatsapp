import 'dart:convert';

class Usuario {
  String nome;
  String email;
  String senha;
  
  Usuario({
    this.nome,
    this.email,
    this.senha,
  });

  Usuario copyWith({
    String nome,
    String email,
    String senha,
  }) {
    return Usuario(
      nome: nome ?? this.nome,
      email: email ?? this.email,
      senha: senha ?? this.senha,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': email,
    };
  }

  static Usuario fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Usuario(
      nome: map['nome'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  static Usuario fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Usuario(nome: $nome, email: $email, senha: $senha)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Usuario &&
      o.nome == nome &&
      o.email == email &&
      o.senha == senha;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ senha.hashCode;
}

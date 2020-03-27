import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/model/conversa.dart';

class AbaContatos extends StatefulWidget {
  @override
  _AbaContatosState createState() => _AbaContatosState();
}

class _AbaContatosState extends State<AbaContatos> {
  List<Conversa> listaConversas = [
    Conversa("Ana Clara", "Olá tudo bem?",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-projeto-c8a31.appspot.com/o/perfil%2Fperfil1.jpg?alt=media&token=63affc7f-3452-4a0c-8852-6b345b349503"),
    Conversa("Pedro Silva", "Me manda o nome daquela série que falamos!",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-projeto-c8a31.appspot.com/o/perfil%2Fperfil2.jpg?alt=media&token=c1f97479-9ca5-4323-a566-4e26b45ac2be"),
    Conversa("Marcela Almeida", "Vamos sair hoje?",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-projeto-c8a31.appspot.com/o/perfil%2Fperfil3.jpg?alt=media&token=dfead843-1e31-4288-9e6b-53acc0fd9fe3"),
    Conversa("José Renato", "Não vai acreditar no que tenho para te contar...",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-projeto-c8a31.appspot.com/o/perfil%2Fperfil4.jpg?alt=media&token=ff2e2fa8-966c-4ce2-ac5e-795ada2f6776"),
    Conversa("Jamilton Damasceno", "Curso novo!! depois dá uma olhada!!",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-projeto-c8a31.appspot.com/o/perfil%2Fperfil5.jpg?alt=media&token=1d9bb277-4501-49eb-a4cd-ee882893962e"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaConversas.length,
      itemBuilder: (context, indice) {
        Conversa conversa = listaConversas[indice];

        return ListTile(
          contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          leading: CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(conversa.caminhoFoto),
          ),
          title: Text(
            conversa.nome,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        );
      },
    );
  }
}

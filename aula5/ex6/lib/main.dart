import 'package:flutter/material.dart';

void main() => runApp(const MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    const String nomeApp = "Demonstração de Layout Flutter";
    return MaterialApp(
      title: nomeApp,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(nomeApp),
          backgroundColor: Colors.teal,
        ),
        body: const SingleChildScrollView(
          child: ColunaPrincipal(),
        ),
      ),
    );
  }
}

class ColunaPrincipal extends StatelessWidget {
  const ColunaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SecaoImagem(
          imagem: 'assets/images/lago.jpg',
        ),
        SecaoTitulo(
          nome: 'Acampamento do Lago Oeschinen',
          localizacao: 'Kandersteg, Suíça',
        ),
        SecaoBotoes(),
        SecaoTexto(
          descricao:
              'O Lago Oeschinen está localizado aos pés do Blüemlisalp nos '
              'Alpes Berneses. Situado a 1.578 metros acima do nível do mar, '
              'é um dos maiores lagos alpinos. Um passeio de teleférico a partir '
              'de Kandersteg, seguido por uma caminhada de meia hora através de '
              'pastagens e floresta de pinheiros, leva você ao lago, que atinge '
              'até 20 graus Celsius no verão. Atividades incluem remo e '
              'descer de tobogã nas estações mais quentes.',
        ),
      ],
    );
  }
}

class SecaoTitulo extends StatelessWidget {
  const SecaoTitulo({
    super.key,
    required this.nome,
    required this.localizacao,
  });

  final String nome;
  final String localizacao;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Row(
        children: [
          Expanded(
            child: ColunaTexto(
              nome: nome,
              localizacao: localizacao,
            ),
          ),
          const AvaliacaoWidget(),
        ],
      ),
    );
  }
}

class ColunaTexto extends StatelessWidget {
  const ColunaTexto({
    super.key,
    required this.nome,
    required this.localizacao,
  });

  final String nome;
  final String localizacao;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nome,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          localizacao,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class AvaliacaoWidget extends StatelessWidget {
  const AvaliacaoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.amber[600]),
        const SizedBox(width: 4),
        const Text('41'),
      ],
    );
  }
}

class SecaoBotoes extends StatelessWidget {
  const SecaoBotoes({super.key});

  @override
  Widget build(BuildContext context) {
    final Color corPrimaria = Theme.of(context).primaryColor;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BotaoInterativo(
            cor: corPrimaria,
            icone: Icons.phone,
            texto: 'LIGAR',
          ),
          BotaoInterativo(
            cor: corPrimaria,
            icone: Icons.directions,
            texto: 'ROTA',
          ),
          BotaoInterativo(
            cor: corPrimaria,
            icone: Icons.send,
            texto: 'ENVIAR',
          ),
        ],
      ),
    );
  }
}

class BotaoInterativo extends StatelessWidget {
  const BotaoInterativo({
    super.key,
    required this.cor,
    required this.icone,
    required this.texto,
  });

  final Color cor;
  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icone, color: cor, size: 28),
          const SizedBox(height: 6),
          Text(
            texto,
            style: TextStyle(
              fontSize: 13,
              color: cor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class SecaoTexto extends StatelessWidget {
  const SecaoTexto({super.key, required this.descricao});

  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
      child: Text(
        descricao,
        style: const TextStyle(
          height: 1.4,
          fontSize: 15,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class SecaoImagem extends StatelessWidget {
  const SecaoImagem({super.key, required this.imagem});

  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagem,
      width: double.infinity,
      height: 260,
      fit: BoxFit.cover,
    );
  }
}

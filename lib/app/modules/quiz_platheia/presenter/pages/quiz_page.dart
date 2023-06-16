import 'package:flutter/material.dart';
import '../store/quiz_platheia_store.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/quiz_model.dart';
import '../../../../utils/questions.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
    required this.store,
  });

  final QuizPlatheiaStore store;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizPlatheiaStore get store => widget.store;

  @override
  void initState() {
    store.defineCorrectAnswer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple.shade300,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: BlocBuilder<QuizPlatheiaStore, QuizPlatheiaState>(
              bloc: store,
              builder: (context, state) {
                return Text(
                  'Pontuação: ${state.pointsNumber} de 5',
                  style: const TextStyle(fontSize: 15),
                );
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 12),
              BlocBuilder<QuizPlatheiaStore, QuizPlatheiaState>(
                bloc: store,
                builder: (context, state) {
                  if (state.questionNumber == 1) {
                    return QuizModel(
                      store: store,
                      firstAlternative: 'A) Torcedor chama jogador de macaco',
                      secondAlternative: 'B) Agressão entre torcedores',
                      thirdAlternative:
                          'C) Torcedor sendo discriminado por ser homossexual',
                      fourthAlternative: 'D) Preço abusivo dos ingressos',
                      fifthAlternative: 'E) Torcedor sofrendo assédio sexual',
                      textCard: Questions.firstQuestion,
                    );
                  } else if (state.questionNumber == 2) {
                    return QuizModel(
                      store: store,
                      firstAlternative: 'A) Constituição Federal',
                      secondAlternative: 'B) Código de Defesa do Consumidor',
                      thirdAlternative:
                          'C) Confederação Brasileira de Futebol (CBF)',
                      fourthAlternative: 'D) Código de Trânsito Brasileiro',
                      fifthAlternative:
                          'E) Lei Geral de Proteção de Dados (LGPD)',
                      textCard: Questions.secondQuestion,
                    );
                  } else if (state.questionNumber == 3) {
                    return QuizModel(
                      store: store,
                      firstAlternative:
                          'A) Apontando o infrator para que este seja rechaçado, promovendo o revanchismo entre as torcidas',
                      secondAlternative:
                          'B) Punindo o torcedor repressor com multa',
                      thirdAlternative:
                          'C) Proibindo que o torcedor racista compareça aos eventos desportivos',
                      fourthAlternative:
                          'D) Identificar o torcedor infrator para que medidas restritivas/administrativas sejam tomadas com o intuito de promover a paz e a boa convivência nos eventos esportivos',
                      fifthAlternative:
                          'E) Nenhuma das alternativas anteriores',
                      textCard: Questions.thirdQuestion,
                    );
                  } else if (state.questionNumber == 4) {
                    return QuizModel(
                      store: store,
                      firstAlternative:
                          'A) Sim, pois foi desenvolvido um banco de dados que faça o suporte de diferentes dados, que é separado por evento.',
                      secondAlternative:
                          'B) Não, pois o grande fluxo de dados interfere na sua performance.',
                      thirdAlternative:
                          'C) Sim se forem eventos próximos. A rede suporta o grande fluxo de dados se forem dentro de um raio suportado pelo sistema.',
                      fourthAlternative:
                          'D) Não, pois os dados podem se perder se ultrapassar o limite ao qual o sistema foi dimensionado.',
                      fifthAlternative:
                          'E) Sim, pois além de todo o banco de dados ter sido desenvolvido para esse suporte, todo o sistema foi pensado para que, independente do local, o software possa atender mais de um evento ao mesmo tempo.',
                      textCard: Questions.fourthQuestion,
                    );
                  } else if (state.questionNumber == 5) {
                    return QuizModel(
                      store: store,
                      firstAlternative:
                          'A) Utilizando o nome do usuário que fez o reporte',
                      secondAlternative:
                          'B) Utilizando o GPS e a localização do usuário',
                      thirdAlternative:
                          'C) Utilizando o cruzamento de informações relacionadas ao reporte (data, horário, local, evento, usuário)',
                      fourthAlternative:
                          'D) Utilizando o evento para filtrar os dados',
                      fifthAlternative:
                          'E) Nenhuma das alternativas anteriores',
                      textCard: Questions.fifthQuestion,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

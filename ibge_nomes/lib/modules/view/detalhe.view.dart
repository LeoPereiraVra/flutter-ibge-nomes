import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ibge_nomes/modules/controller/detalhe.controller.dart';

class DetalheView extends GetView<DetalheController> {
  const DetalheView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Nome: ${controller.nome!.nome}'),
            // Text('Sexo: ${controller.nome!.sexo}'),
            Text('Rank: ${controller.nome!.rank}'),
            Text('Frequencia: ${controller.nome!.freq}'),
            Text('Região: ${controller.nome!.regiao}'),
          ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ibge_nomes/modules/controller/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nomes populares IBGE"),
      ),
      body: Container(
        child: controller.obx(
            (state) => ListView.builder(
                itemCount: state?.length,
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.only(left:8, right: 8),
                          title: Text('Nome: ${state![i].nome}'),
                          subtitle: Text('Rank: ${state[i].rank}'),
                          onTap: (){
                            controller.irDetalhe(state[i]);
                          },),
                      const Divider()
                    ],
                  );
                }),
            onEmpty: const Center(child: Text("Sem dados para exibição")),
            onError: (error) => Center(child: Text(error ?? ""))),
      ),
    );
  }
}
